.class public Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
.source "PlayCardMerchClusterViewContent.java"

# interfaces
.implements Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;


# instance fields
.field private final mFallbackMerchColor:I

.field private mMerchColor:I

.field private mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

.field private mMerchImagePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mFallbackMerchColor:I

    return-void
.end method

.method private clearImageFadingEdge()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->clearFadingEdges()V

    return-void
.end method

.method private configureImageFadingEdge()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImagePosition:I

    if-ne v4, v2, :cond_0

    move v0, v2

    :goto_0
    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImagePosition:I

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchColor:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->configureFadingEdges(ZZII)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public configureMerch(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/protos/Doc$Image;
    .param p4    # Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Merch image position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mFallbackMerchColor:I

    invoke-static {p3, v1}, Lcom/google/android/finsky/utils/PlayUtils;->getFillColor(Lcom/google/android/finsky/protos/Doc$Image;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchColor:I

    iput p2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImagePosition:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setOnLoadedListener(Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v1, p3, p1}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->configureImageFadingEdge()V

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v1, p4}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    if-eqz p4, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setClickable(Z)V

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->setBackgroundColor(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->clearImageFadingEdge()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getIndexOfFirstCard()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->onFinishInflate()V

    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FadingEdgeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getHeight()I

    move-result v0

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredWidth()I

    move-result v4

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredHeight()I

    move-result v3

    if-lez v4, :cond_2

    mul-int/lit8 v9, v3, 0x3

    div-int/lit8 v1, v9, 0x4

    iget v9, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImagePosition:I

    if-nez v9, :cond_0

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getLeadingGap(I)I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    sub-int v5, v9, v1

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    const/4 v10, 0x0

    add-int v11, v5, v4

    invoke-virtual {v9, v5, v10, v11, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getTrailingGap(I)I

    move-result v7

    div-int/lit8 v9, v7, 0x2

    sub-int v9, v8, v9

    sub-int v5, v9, v1

    add-int v6, v5, v4

    if-ge v6, v8, :cond_1

    sub-int v9, v8, v6

    add-int/2addr v5, v9

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    const/4 v10, 0x0

    add-int v11, v5, v4

    invoke-virtual {v9, v5, v10, v11, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v4, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onLoaded(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->configureImageFadingEdge()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/high16 v4, 0x40000000

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getMeasuredHeight()I

    move-result v0

    const v2, 0x3fe38e39

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->measure(II)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->configureImageFadingEdge()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->clearImageFadingEdge()V

    goto :goto_0
.end method
