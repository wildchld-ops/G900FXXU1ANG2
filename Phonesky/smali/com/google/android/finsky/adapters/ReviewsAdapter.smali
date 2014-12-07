.class public Lcom/google/android/finsky/adapters/ReviewsAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "ReviewsAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ReviewsAdapter$2;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    }
.end annotation


# instance fields
.field private final mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mHeaderVisible:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListingOptionsHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->inErrorState()Z

    move-result v1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iput-object p4, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    iput-object p5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mListingOptionsHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;

    iput-object p6, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p7, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ReviewsAdapter;)Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    return-object v0
.end method

.method private bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    :goto_0
    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    if-eqz v6, :cond_3

    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    new-instance v1, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;-><init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Lcom/google/android/finsky/protos/DocumentV2$Review;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-boolean v0, v2, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iput-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iput-object v7, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v6, v4

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private filtersVisible()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFiltersView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    const v1, 0x7f040124

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ReviewsControlContainer;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mListingOptionsHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->configure(Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseListingOptionsHandler;)V

    return-object v0

    :cond_0
    check-cast p1, Lcom/google/android/finsky/layout/ReviewsControlContainer;

    move-object v0, p1

    goto :goto_0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    const v1, 0x7f040125

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    move-object v0, p1

    goto :goto_0
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040126

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V

    return-object p2
.end method

.method private getNoMatchingView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    const v1, 0x7f040127

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const v1, 0x7f040128

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HistogramView;

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HistogramView;->bind(Lcom/google/android/finsky/api/model/Document;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/finsky/layout/HistogramView;

    move-object v0, p1

    goto :goto_1
.end method

.method private statsVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasReviewHistogramData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFirstReviewViewIndex()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/android/finsky/protos/DocumentV2$Review;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/DocumentV2$Review;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 p1, p1, -0x1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/google/android/finsky/adapters/ReviewsAdapter$2;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v1, v3

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_2
    move v1, v4

    goto :goto_1

    :cond_9
    move v1, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for getView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFiltersView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getNoMatchingView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v0

    sub-int v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    return-void
.end method

.method protected retryLoadingItems()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->retryLoadItems()V

    return-void
.end method
