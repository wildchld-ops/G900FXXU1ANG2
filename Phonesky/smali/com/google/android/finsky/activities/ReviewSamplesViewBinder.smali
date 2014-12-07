.class public Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "ReviewSamplesViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field private mAlwaysShowMore:Z

.field private mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mReviewHolder:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    if-nez p4, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v1, 0x0

    invoke-super {p0, p1, p3, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    const v1, 0x7f0800db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    const v1, 0x7f08022b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HistogramView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/layout/HistogramView;->bind(Lcom/google/android/finsky/api/model/Document;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    invoke-super {p0, p1, p3, p4}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAlwaysShowMore:Z

    iput-object p5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public invalidateCurrentReviewUrl()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->shouldFilterByDevice()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeReviews;->getVersionFilter()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getRatingFilter()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 12

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v10

    if-nez v10, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v1, 0x7f0901aa

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800df

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v1, 0x3

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v7, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v3

    add-int/2addr v3, v7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800dc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/DetailsReviewsFooter;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAlwaysShowMore:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-le v10, v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v1, v8, Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    if-eqz v1, :cond_4

    check-cast v8, Lcom/google/android/finsky/layout/SeparatorLinearLayout;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->hideSeparator()V

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v6, v1, v3}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/layout/DetailsReviewsFooter;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    :cond_1
    return-void
.end method

.method public onRateReview(Lcom/google/android/finsky/protos/DocumentV2$Review;)V
    .locals 5

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "rate_review_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/RateReviewDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v2, "rate_review_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/RateReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    :cond_1
    new-instance v0, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/model/DfeReviews;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v7, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    goto :goto_0
.end method
