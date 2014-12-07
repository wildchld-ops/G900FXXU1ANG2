.class public Lcom/google/android/finsky/activities/DetailsSummaryBooksViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryBooksViewBinder.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method protected displayActionButtonsIfNecessary(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/finsky/activities/DetailsSummaryBooksViewBinder;->displayActionButtonsIfNecessaryNew(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z

    move-result v0

    return v0
.end method
