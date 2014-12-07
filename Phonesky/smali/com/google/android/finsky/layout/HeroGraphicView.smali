.class public Lcom/google/android/finsky/layout/HeroGraphicView;
.super Lcom/google/android/finsky/layout/YoutubeFrameView;
.source "HeroGraphicView.java"


# instance fields
.field private mDefaultAspectRatio:F

.field private mImageType:I

.field private final mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HeroGraphicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/HeroGraphicView;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mImageType:I

    return v0
.end method


# virtual methods
.method public bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/HeroGraphicView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/finsky/layout/HeroGraphicView$1;-><init>(Lcom/google/android/finsky/layout/HeroGraphicView;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public hideAccessibilityOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public varargs load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;[I)V
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-static {p2, v1, v2, p3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iput v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mImageType:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    goto :goto_0
.end method

.method public load(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-static {p2, v1, v2}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    iget v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iput v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mImageType:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HeroGraphicView;->getPaddingRight()I

    move-result v5

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v8}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v8, v7, v2

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x0

    add-int v10, v3, v2

    invoke-virtual {v8, v3, v9, v10, v0}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v8, v7, v6

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    sub-int v8, v0, v1

    div-int/lit8 v4, v8, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    add-int v9, v3, v6

    add-int v10, v4, v1

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v7, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mPlayImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->measure(II)V

    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v10, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/FifeImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/FifeImageView;->isLoaded()Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mDefaultAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    :cond_0
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mDefaultAspectRatio:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    int-to-float v10, v0

    iget v11, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mDefaultAspectRatio:F

    mul-float/2addr v10, v11

    float-to-int v2, v10

    :goto_0
    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    const/high16 v11, 0x40000000

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, p1, v11}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_1
    iget v2, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    mul-int v10, v0, v3

    div-int v6, v10, v4

    const/high16 v10, 0x40000000

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    if-gt v6, v10, :cond_3

    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10, p1, v7}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_3
    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    mul-int/2addr v10, v4

    div-int v8, v10, v3

    const/high16 v10, 0x40000000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    const/high16 v11, 0x40000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v10, v9, v5}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget v10, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mMaxHeight:I

    invoke-virtual {p0, v0, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public setDefaultAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/HeroGraphicView;->mDefaultAspectRatio:F

    return-void
.end method
