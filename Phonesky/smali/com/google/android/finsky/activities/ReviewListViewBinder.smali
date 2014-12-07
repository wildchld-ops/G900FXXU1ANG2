.class public Lcom/google/android/finsky/activities/ReviewListViewBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "ReviewListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/DfeReviews;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;",
        "Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field private mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mHasLoadedAtLeastOnce:Z

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mReviewList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 8

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f080149

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v6, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v7, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v2, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-super {p0, p1, p4, p5}, Lcom/google/android/finsky/fragments/ViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    iput-object p6, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public onChooseFilterOptions()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "filter_options_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->currentlyFilteringByVersion()Z

    move-result v3

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->shouldFilterByDevice()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->newInstance(ZZ)Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v2, "filter_options_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onChooseSortingOptions()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "sorting_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->newInstance(Lcom/google/android/finsky/api/model/DfeReviews;)Lcom/google/android/finsky/activities/ReviewsSortingDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v2, "sorting_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewsSortingDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    :cond_0
    return-void
.end method

.method public onRateReview(Lcom/google/android/finsky/protos/DocumentV2$Review;)V
    .locals 5

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "rate_review_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/RateReviewDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v2, "rate_review_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/RateReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeReviews;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/ViewBinder;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->clearTransientState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    return-void
.end method
