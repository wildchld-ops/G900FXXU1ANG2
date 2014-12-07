.class public Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
.super Landroid/view/ViewGroup;
.source "PlayCardClusterViewContent.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mCardContentPaddingBottom:I

.field private final mCardContentPaddingLeft:I

.field private final mCardContentPaddingRight:I

.field protected mCardContentPaddingTop:I

.field protected mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field protected mDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mInflater:Landroid/view/LayoutInflater;

    sget-object v1, Lcom/android/vending/R$styleable;->PlayCardClusterViewContent:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingLeft:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingRight:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingTop:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingBottom:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getCardFromHeap(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;Lcom/google/android/finsky/layout/play/PlayCardHeap;)Lcom/google/android/play/layout/PlayCardViewBase;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v1}, Lcom/google/android/finsky/layout/play/PlayCardHeap;->getCard(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;Landroid/view/LayoutInflater;)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getThumbnailAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardViewBase;->setThumbnailAspectRatio(F)V

    return-object v0
.end method

.method private getCellSize(I)F
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getWidth()I

    move-result v0

    int-to-float v1, p1

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public bindCardAt(IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->bindCardContent(Lcom/google/android/play/layout/PlayCardViewBase;IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V

    return-void
.end method

.method public bindCardContent(Lcom/google/android/play/layout/PlayCardViewBase;IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V
    .locals 16

    const/4 v2, 0x0

    if-ltz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mDocs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p3

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mDocs:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/layout/PlayCardViewBase;->clearCardState()V

    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/google/android/finsky/utils/PlayUtils;->hasReasons(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->shouldRespectChildThumbnailAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v11

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/google/android/play/layout/PlayCardViewBase;->setThumbnailAspectRatio(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getThumbnail()Lcom/google/android/play/layout/PlayCardThumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayCardThumbnail;->getImageView()Landroid/widget/ImageView;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v12}, Lcom/google/android/finsky/layout/FifeImageView;->holdLoading()V

    move v15, v14

    if-eqz v15, :cond_3

    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/utils/ClientMutationCache;->isDismissedRecommendation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v6, 0x0

    if-eqz v15, :cond_4

    move-object/from16 v7, p4

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;ZI)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getThumbnailAspectRatio()F

    move-result v11

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 6

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p6, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getNumberOfTilesToBind()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardFromHeap(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;Lcom/google/android/finsky/layout/play/PlayCardHeap;)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->tileIndexToDocumentIndex(I)I

    move-result v2

    :goto_1
    invoke-virtual {p0, v0, v3, v2, p4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->bindCardContent(Lcom/google/android/play/layout/PlayCardViewBase;IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getIndexOfFirstCard()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardViewBase;

    return-object v0
.end method

.method public getCardChildCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getIndexOfFirstCard()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCardChildIndex(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getIndexOfFirstCard()I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCardContentPaddingLeft()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingLeft:I

    return v0
.end method

.method public getCardContentPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingRight:I

    return v0
.end method

.method protected getIndexOfFirstCard()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeadingGap(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCellSize(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getLeadingGap()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    return-object v0
.end method

.method protected getNumberOfTilesToBind()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v0

    return v0
.end method

.method public getTrailingGap(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCellSize(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTrailingGap()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCellSize(I)F

    move-result v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getIndexOfFirstCard()I

    move-result v10

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getXStart()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getYStart()I

    move-result v8

    add-int v17, v10, v15

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayCardViewBase;

    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v5, v13, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingBottom:I

    move/from16 v17, v0

    sub-int v3, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->shouldRespectChildHeight()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getVSpan()I

    move-result v17

    add-int v7, v8, v17

    sub-int v17, v11, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v3, v3, v17

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardViewBase;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v3, v17

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardViewBase;->getMeasuredWidth()I

    move-result v18

    add-int v18, v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v5, v0, v1, v3}, Lcom/google/android/play/layout/PlayCardViewBase;->layout(IIII)V

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardViewBase;->getThumbnail()Lcom/google/android/play/layout/PlayCardThumbnail;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/play/layout/PlayCardThumbnail;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/FifeImageView;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/layout/FifeImageView;->releaseLoading(Z)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCellSize(I)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->shouldRespectChildHeight()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getIndexOfFirstCard()I

    move-result v10

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getHSpan()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getVSpan()I

    move-result v6

    add-int v18, v10, v16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v0, v4

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v7, v0

    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v5, v0

    const/high16 v18, 0x40000000

    move/from16 v0, v18

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    if-eqz v12, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v11, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_0
    const/high16 v18, 0x40000000

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v11, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingBottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    if-eqz v12, :cond_2

    :goto_2
    add-int v14, v18, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->setMeasuredDimension(II)V

    return-void

    :cond_2
    int-to-float v0, v13

    move/from16 v19, v0

    mul-float v19, v19, v8

    move/from16 v0, v19

    float-to-int v9, v0

    goto :goto_2
.end method

.method public removeAllCards()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getIndexOfFirstCard()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->removeAllViews()V

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setCardContentVerticalPadding(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingTop:I

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mCardContentPaddingBottom:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->requestLayout()V

    return-void
.end method

.method public setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/utils/ClientMutationCache;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tile / document count inconsistent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tiles defined in metadata, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " documents passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mDocs:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    return-void
.end method

.method protected tileIndexToDocumentIndex(I)I
    .locals 0

    return p1
.end method
