.class final Lcom/google/android/finsky/utils/PlayCardUtils$4;
.super Lcom/google/android/finsky/utils/PlayCardCustomizer;
.source "PlayCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/utils/PlayCardCustomizer",
        "<",
        "Lcom/google/android/play/layout/PlayCardViewMini;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/PlayCardCustomizer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p2    # Lcom/google/android/finsky/api/model/Document;

    check-cast p1, Lcom/google/android/play/layout/PlayCardViewMini;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/PlayCardUtils$4;->preBind(Lcom/google/android/play/layout/PlayCardViewMini;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method public preBind(Lcom/google/android/play/layout/PlayCardViewMini;Lcom/google/android/finsky/api/model/Document;)V
    .locals 9
    .param p1    # Lcom/google/android/play/layout/PlayCardViewMini;
    .param p2    # Lcom/google/android/finsky/api/model/Document;

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/utils/PlayCardCustomizer;->preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V

    const/4 v6, 0x2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v8, 0x2

    if-eq v2, v8, :cond_0

    const/4 v8, 0x4

    if-ne v2, v8, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p2, v4, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v8

    invoke-static {p2, v8, v0}, Lcom/google/android/finsky/utils/DocUtils;->getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v8, v5, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-virtual {p1, v6}, Lcom/google/android/play/layout/PlayCardViewMini;->setTitleMaxLines(I)V

    return-void
.end method
