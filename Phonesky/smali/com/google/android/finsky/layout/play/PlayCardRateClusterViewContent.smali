.class public Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
.source "PlayCardRateClusterViewContent.java"


# instance fields
.field private mTileIndexToDocumentIndexMapping:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->syncIndexMapping()V

    invoke-super/range {p0 .. p6}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public hasItemsToRate()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mTileIndexToDocumentIndexMapping:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public syncIndexMapping()V
    .locals 12

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mDocs:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v7

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mTileIndexToDocumentIndexMapping:[I

    if-nez v10, :cond_2

    new-array v10, v7, [I

    iput-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mTileIndexToDocumentIndexMapping:[I

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_3

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mTileIndexToDocumentIndexMapping:[I

    const/4 v11, -0x1

    aput v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mDocs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v4, v3

    :goto_1
    if-ge v2, v5, :cond_0

    if-ge v4, v7, :cond_0

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mDocs:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Lcom/google/android/finsky/utils/ClientMutationCache;->getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v10

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    :goto_2
    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/utils/ClientMutationCache;->isDismissedRecommendation(Ljava/lang/String;)Z

    move-result v9

    if-nez v8, :cond_4

    if-eqz v9, :cond_6

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mTileIndexToDocumentIndexMapping:[I

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v1, v2, 0x1

    aput v2, v10, v4

    move v2, v1

    move v4, v3

    goto :goto_1
.end method

.method protected tileIndexToDocumentIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->mTileIndexToDocumentIndexMapping:[I

    aget v0, v0, p1

    return v0
.end method
