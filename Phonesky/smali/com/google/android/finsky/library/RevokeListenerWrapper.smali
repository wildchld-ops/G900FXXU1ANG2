.class public Lcom/google/android/finsky/library/RevokeListenerWrapper;
.super Ljava/lang/Object;
.source "RevokeListenerWrapper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/RevokeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCurrentAccount:Landroid/accounts/Account;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/RevokeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplicators:Lcom/google/android/finsky/library/LibraryReplicators;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/library/LibraryReplicators;
    .param p2    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/library/LibraryReplicators;",
            "Landroid/accounts/Account;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/RevokeResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    iput-object p2, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mCurrentAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/RevokeResponse;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/protos/RevokeResponse;

    iget-object v0, p1, Lcom/google/android/finsky/protos/RevokeResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    iget-object v1, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mCurrentAccount:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/finsky/protos/RevokeResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    const-string v3, "revoke"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/library/RevokeListenerWrapper;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/RevokeResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/RevokeListenerWrapper;->onResponse(Lcom/google/android/finsky/protos/RevokeResponse;)V

    return-void
.end method
