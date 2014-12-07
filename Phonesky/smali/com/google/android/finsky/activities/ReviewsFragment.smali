.class public Lcom/google/android/finsky/activities/ReviewsFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewsSortingDialog$Listener;


# instance fields
.field protected mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field protected mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFilterByDevice:Z

.field private mFilterByVersion:Z

.field protected final mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

.field private mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSortType:I

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewListViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const/16 v0, 0x12e

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsFragment;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/ReviewsFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->reloadReviews()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/activities/ReviewsFragment;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewsFragment;-><init>()V

    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setTheme(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    const-string v1, "finsky.ReviewsFragment.document"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private recordState()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByDevice"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByVersion"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.sortType"

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private reloadReviews()V
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->shouldFilterByDevice()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeReviews;->getVersionFilter()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getRatingFilter()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->resetItems()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->switchToLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->requestData()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040080

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByDevice"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByVersion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.sortType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSortType:I

    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/model/DfeReviews;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeReviews;->setFilters(ZZ)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeReviews;->setSortType(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->switchToLoading()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->requestData()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.ReviewsFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ReviewsFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->onDataChanged()V

    :cond_0
    return-object v0
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v2, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragment$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/ReviewsFragment$1;-><init>(Lcom/google/android/finsky/activities/ReviewsFragment;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragment$2;-><init>(Lcom/google/android/finsky/activities/ReviewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public onReviewFilterChanged(ZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/api/model/DfeReviews;->setFilters(ZZ)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->refetchReviews()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSortingChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->setSortType(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->refetchReviews()V

    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method protected rebindViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->rebindActionBar()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDataView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method protected requestData()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    return-void
.end method

.method protected toast(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
