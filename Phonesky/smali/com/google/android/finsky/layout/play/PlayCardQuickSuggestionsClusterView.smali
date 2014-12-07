.class public Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterView;
.source "PlayCardQuickSuggestionsClusterView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/play/PlayCardDismissListener;


# instance fields
.field private mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEmptySadface:Landroid/widget/TextView;

.field private mIndexOfItemToRate:I

.field private mItemsToRate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

.field private mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

.field private mShouldScrollRateCardOnDataLoad:Z

.field private mState:I

.field private mStreamDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mState:I

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Z)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncIndexOfItemToRate(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Z)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;)Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;)Lcom/google/android/finsky/adapters/OnCollapsedListener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    return-object v0
.end method

.method private clearRecommendedItemsList()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    :cond_0
    return-void
.end method

.method private handleErrorOrNoSuggestionsResponse()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/utils/ClientMutationCache;->dismissRecommendation(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncIndexOfItemToRate(Z)V

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncState(Z)V

    return-void
.end method

.method public static isClusterDismissed(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 5
    .param p0    # Lcom/google/android/finsky/utils/ClientMutationCache;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/utils/ClientMutationCache;->isDismissedRecommendation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/utils/ClientMutationCache;->getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v4, v2, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    sget-object v3, Lcom/google/android/finsky/config/G;->positiveRateThreshold:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v4, v3, :cond_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private setState(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mState:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;

    iget v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mState:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->setState(I)V

    return-void
.end method

.method private syncIndexOfItemToRate(Z)V
    .locals 12
    .param p1    # Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mShouldScrollRateCardOnDataLoad:Z

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    if-ge v8, v5, :cond_3

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v11, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got a null document at index "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    goto :goto_1

    :cond_0
    move v8, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {v8, v1}, Lcom/google/android/finsky/utils/ClientMutationCache;->isDismissedRecommendation(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11}, Lcom/google/android/finsky/utils/ClientMutationCache;->getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    return-void

    :cond_4
    iget v2, v3, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    sget-object v8, Lcom/google/android/finsky/config/G;->positiveRateThreshold:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v2, v8, :cond_5

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSuggestForRatingSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v8, v6, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    move v4, v9

    :goto_2
    if-nez v4, :cond_3

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    goto :goto_1

    :cond_6
    move v4, v10

    goto :goto_2
.end method

.method private syncState(Z)V
    .locals 11
    .param p1    # Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getCardChildCount()I

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mState:I

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_3

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mState:I

    if-eq v2, v8, :cond_1

    if-nez p1, :cond_2

    :goto_1
    invoke-direct {p0, v6}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->transitionToEmptyState(Z)V

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClusterDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/ClientMutationCache;->dismissRecommendation(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v9, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/finsky/utils/ClientMutationCache;->getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->hideRateCard()V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->clearRecommendedItemsList()V

    new-instance v8, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v10, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getSuggestForRatingSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    invoke-direct {v8, v9, v6, v7}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v7}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    new-array v9, v6, [Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v10, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    aput-object v6, v9, v7

    invoke-static {v9}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v8, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mDocs:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v4

    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v6, v7, v7, p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->bindCardAt(IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setThumbnailAspectRatio(F)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050004

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v6, 0x96

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v6, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;F)V

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private transitionToEmptyState(Z)V
    .locals 7
    .param p1    # Z

    const-wide/16 v5, 0xfa

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$4;-><init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V
    .locals 8
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayCardHeap;

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mStreamDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncState(Z)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;-><init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;)V

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setRateListener(Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;)V

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    return-void
.end method

.method public enableCollapseAnimation(Lcom/google/android/finsky/adapters/OnCollapsedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/adapters/OnCollapsedListener;

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    return-void
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x19d

    return v0
.end method

.method public limitDocumentsToTileCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDataChanged()V
    .locals 11

    const/4 v10, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->handleErrorOrNoSuggestionsResponse()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v7, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getCardChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mRecommendedItems:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iput-object v1, v6, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mDocs:Ljava/util/List;

    const/4 v3, 0x1

    :goto_2
    if-gt v3, v2, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v6, v3, v3, p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->bindCardAt(IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    iget v7, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSuggestForRatingSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mShouldScrollRateCardOnDataLoad:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iget-object v6, v6, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getWidth()I

    move-result v6

    if-gt v6, v10, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->scrollAwayRateCard()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v7, v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->descriptionHtml:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->replaceTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_3
    invoke-direct {p0, v10}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;-><init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;)V

    const-wide/16 v8, 0x2ee

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->hideRateCard()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v7, v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->descriptionHtml:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->replaceTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->hasCards()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setRateListener(Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->clearRecommendedItemsList()V

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismissDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/play/layout/PlayCardViewBase;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/play/layout/PlayCardViewBase;->getCardType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/ClientMutationCache;->dismissRecommendation(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncIndexOfItemToRate(Z)V

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncState(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mStreamDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardDismissListener;->onDismissDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->handleErrorOrNoSuggestionsResponse()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->onFinishInflate()V

    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v6, v3, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->layout(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    add-int v5, v3, v0

    invoke-virtual {v4, v6, v3, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->layout(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v6, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->measure(II)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->measure(II)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mEmptySadface:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Lcom/google/android/finsky/utils/ClientMutationCache;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/utils/ClientMutationCache;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    iput-object p4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-static {p3}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncIndexOfItemToRate(Z)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mIndexOfItemToRate:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mItemsToRate:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
