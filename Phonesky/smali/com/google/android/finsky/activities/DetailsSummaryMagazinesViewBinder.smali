.class public Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMagazinesViewBinder.java"


# instance fields
.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Landroid/accounts/Account;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Z
    .param p3    # [Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    return-void
.end method

.method protected displayActionButtonsIfNecessary(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z
    .locals 1
    .param p1    # Lcom/google/android/play/layout/PlayActionButton;
    .param p2    # Lcom/google/android/play/layout/PlayActionButton;
    .param p3    # Lcom/google/android/play/layout/PlayActionButton;
    .param p4    # Lcom/google/android/play/layout/PlayActionButton;
    .param p5    # Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->displayActionButtonsIfNecessaryNew(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z

    move-result v0

    return v0
.end method

.method protected setupActionButtons(Z)V
    .locals 2
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setupCreator(Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected shouldDisplayOfferNote()Z
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mSubscriptions:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMagazinesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v0, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
