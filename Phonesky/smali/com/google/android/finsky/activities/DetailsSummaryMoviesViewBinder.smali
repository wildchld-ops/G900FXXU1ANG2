.class public Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMoviesViewBinder.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method protected displayActionButtonsIfNecessary(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->displayActionButtonsIfNecessaryNew(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z

    move-result v0

    return v0
.end method

.method protected getDownloadClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    return-object v0
.end method
