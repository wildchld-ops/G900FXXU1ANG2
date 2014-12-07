.class public Lcom/google/android/finsky/layout/HorizontalStrip;
.super Lcom/google/android/finsky/layout/AbsHorizontalStrip;
.source "HorizontalStrip.java"


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field private final mDimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

.field private mEdgeFadeColor:I

.field private final mIsInDoubleColumnLayout:Z

.field protected final mScreenScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Doc$Image$Dimension;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    return-void
.end method

.method private getChildHeight(I)I
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/protos/Doc$Image$Dimension;F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iget v0, v0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    return v0
.end method

.method private getChildWidth(I)I
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iget v2, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mScreenScaleFactor:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageDimensionAt(ILcom/google/android/finsky/protos/Doc$Image$Dimension;F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mDimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iget v0, v0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    return v0
.end method

.method private getTotalChildWidth(I)I
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method private recreateChildViews()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->removeAllViews()V

    iget-object v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p0, v2}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getViewAt(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    move v0, v2

    new-instance v3, Lcom/google/android/finsky/layout/HorizontalStrip$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip$2;-><init>(Lcom/google/android/finsky/layout/HorizontalStrip;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V

    goto :goto_0
.end method

.method private syncChildViews()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v5, v0, Lcom/google/android/finsky/layout/AppScreenshot;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/finsky/layout/AppScreenshot;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AppScreenshot;->setScreenshotDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    instance-of v5, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v5, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/layout/VideoFrame;->configurePreviewWithFlatOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected getLeftEdgeOfChild(I)F
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getTotalChildWidth(I)I

    move-result v3

    add-int/2addr v0, v3

    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v2, v3

    :cond_1
    int-to-float v3, v2

    return v3
.end method

.method protected getLeftEdgeOfChildOnLeft(F)F
    .locals 4
    .param p1    # F

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getTotalChildWidth(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v2, v3

    :cond_1
    int-to-float v3, v2

    return v3

    :cond_2
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getLeftEdgeOfChildOnRight(F)F
    .locals 4
    .param p1    # F

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->getTotalChildWidth(I)I

    move-result v3

    add-int/2addr v0, v3

    move v2, v0

    int-to-float v3, v0

    cmpl-float v3, v3, p1

    if-lez v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v2, v3

    :cond_1
    int-to-float v3, v2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    :cond_0
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    :goto_0
    return v3

    :cond_1
    neg-float v1, v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x3f800000

    goto :goto_0

    :cond_2
    int-to-float v3, v0

    div-float v3, v1, v3

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getScrollPosition()F

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHorizontalFadingEdgeLength()I

    move-result v0

    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    goto :goto_0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mEdgeFadeColor:I

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getHeight()I

    move-result v2

    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getPaddingLeft()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v4, v5

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/4 v5, 0x0

    add-int v6, v4, v1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mIsInDoubleColumnLayout:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget-object v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasLeadingMargin()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    iget v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mLayoutMargin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mTotalChildrenWidth:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1    # I
    .param p2    # I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildWidth(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/HorizontalStrip;->getChildHeight(I)I

    move-result v1

    instance-of v6, v0, Lcom/google/android/finsky/layout/VideoFrame;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasImageDimensionAt(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-eqz v1, :cond_1

    int-to-float v6, v5

    int-to-float v7, v1

    div-float v4, v6, v7

    float-to-double v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v2, v6

    :cond_1
    const/high16 v6, 0x40000000

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/layout/HorizontalStrip;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip;->mAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v1, Lcom/google/android/finsky/layout/HorizontalStrip$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/HorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V

    return-void
.end method
