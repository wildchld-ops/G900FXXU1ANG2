.class public Lcom/google/android/finsky/library/AccountLibrary;
.super Ljava/lang/Object;
.source "AccountLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/AccountLibrary$Listener;
    }
.end annotation


# static fields
.field private static final EMPTY_AUTO_ACQUIRE_TAGS:[Ljava/lang/String;

.field public static final LIBRARY_IDS:[Ljava/lang/String;

.field public static final LIBRARY_ID_APPS:Ljava/lang/String;

.field public static final LIBRARY_ID_MAGAZINE:Ljava/lang/String;

.field public static final LIBRARY_ID_MUSIC:Ljava/lang/String;

.field public static final LIBRARY_ID_OCEAN:Ljava/lang/String;

.field public static final LIBRARY_ID_YOUTUBE:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAutoAcquireTags:[Ljava/lang/String;

.field private final mLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/library/HashingLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/AccountLibrary$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersEnabled:Z

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "u-wl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/finsky/library/AccountLibrary;->EMPTY_AUTO_ACQUIRE_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Landroid/os/Handler;)V
    .locals 6
    .param p1    # Landroid/accounts/Account;
    .param p2    # Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    iput-boolean v5, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->EMPTY_AUTO_ACQUIRE_TAGS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAutoAcquireTags:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/finsky/library/AccountLibrary;->mNotificationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/AppLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/AppLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    const/4 v3, 0x2

    new-instance v4, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v4}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(ILcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v5, v3}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(ILcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    const/4 v3, 0x4

    new-instance v4, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v4}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(ILcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/library/MagazinesLibrary;

    new-instance v3, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v3}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/finsky/library/MagazinesLibrary;-><init>(Lcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    const-string v1, "u-wl"

    new-instance v2, Lcom/google/android/finsky/library/HashMapLibrary;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/finsky/library/SumHasher;

    invoke-direct {v4}, Lcom/google/android/finsky/library/SumHasher;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(ILcom/google/android/finsky/library/LibraryHasher;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBackendFromLibraryId(Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLibraryIdFromBackend(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_OCEAN:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_YOUTUBE:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MUSIC:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mNotificationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/library/AccountLibrary$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/library/AccountLibrary$1;-><init>(Lcom/google/android/finsky/library/AccountLibrary;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/library/LibraryEntry;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid account."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AccountLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addListener(Lcom/google/android/finsky/library/AccountLibrary$Listener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary$Listener;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .locals 3
    .param p1    # Lcom/google/android/finsky/library/LibraryEntry;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableListeners()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dumpState(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AccountLibrary (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/library/HashingLibrary;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "library="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/library/HashingLibrary;->dumpState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized enableListeners()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mListenersEnabled:Z

    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 3
    .param p1    # Lcom/google/android/finsky/library/LibraryEntry;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public declared-synchronized getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    .locals 3
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAutoAcquireTags()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAutoAcquireTags:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;
    .locals 3
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;
    .locals 3
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInAppSubscriptionsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionsList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLibrary(Ljava/lang/String;)Lcom/google/android/finsky/library/HashingLibrary;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    return-object v0
.end method

.method public declared-synchronized getMagazinesSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 3
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_MAGAZINE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/MagazinesLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/MagazinesLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getServerToken(Ljava/lang/String;)[B
    .locals 1
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscriptionPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AppLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/library/LibraryEntry;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/Library;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/google/android/finsky/library/Library;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resetLibrary(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    if-nez v0, :cond_0

    const-string v1, "Cannot reset: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/library/AccountLibrary;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoAcquireTags([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAutoAcquireTags:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServerToken(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # [B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 4

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/HashingLibrary;

    invoke-virtual {v1}, Lcom/google/android/finsky/library/HashingLibrary;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public supportsLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v1, "{account=%s numapps=%d}"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/library/AccountLibrary;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/library/AccountLibrary;->mLibraries:Ljava/util/Map;

    sget-object v4, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/HashingLibrary;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
