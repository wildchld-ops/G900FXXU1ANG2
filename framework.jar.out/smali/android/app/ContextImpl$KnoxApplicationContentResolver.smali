.class final Landroid/app/ContextImpl$KnoxApplicationContentResolver;
.super Landroid/content/ContentResolver;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnoxApplicationContentResolver"
.end annotation


# static fields
.field private static final AUTH_KNOX_PROVIDER:Ljava/lang/String; = "com.sec.sdp.provider"

.field private static final KNOX_APPRES_TAG:Ljava/lang/String; = "Sdp.contentresolver"

.field private static final debug:Z


# instance fields
.field private final mMainThread:Landroid/app/ActivityThread;

.field private final mUser:Landroid/os/UserHandle;

.field private final supportedProviders:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email.provider"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.enterprise.email.provider"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->supportedProviders:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method private isSupportedAuth(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->supportedProviders:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->supportedProviders:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->isSupportedAuth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const-string v1, "com.sec.sdp.provider"

    iget-object v2, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->isSupportedAuth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const-string v1, "com.sec.sdp.provider"

    iget-object v2, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ContextImpl$KnoxApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    return-void
.end method
