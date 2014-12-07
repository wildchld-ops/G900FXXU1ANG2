.class final Lcom/google/android/finsky/utils/WishlistHelper$1;
.super Ljava/lang/Object;
.source "WishlistHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/DfeApi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/WishlistHelper$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/WishlistHelper$1;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    const-string v3, "modifed_wishlist"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/WishlistHelper$1;->onResponse(Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;)V

    return-void
.end method
