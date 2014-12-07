.class public Lcom/google/android/finsky/layout/PlaylistHeader;
.super Landroid/widget/RelativeLayout;
.source "PlaylistHeader.java"


# instance fields
.field private mHeader:Landroid/view/View;

.field private final mMinFullHeight:I

.field private mPlaylistControl:Landroid/view/View;

.field private mSubheader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/PlaylistHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mMinFullHeight:I

    return-void
.end method

.method private isCompactMode()Z
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PlaylistHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PlaylistHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PlaylistHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-direct {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->isCompactMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getPaddingBottom()I

    move-result v10

    sub-int v2, v9, v10

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v2, v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getPaddingTop()I

    move-result v3

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v0, v9

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getHeight()I

    move-result v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v0

    sub-int/2addr v9, v3

    div-int/lit8 v9, v9, 0x2

    add-int v1, v4, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v1

    invoke-virtual {v9, v10, v1, v11, v12}, Landroid/view/View;->layout(IIII)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getWidth()I

    move-result v9

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v5, v9, v10

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v10

    sub-int v7, v9, v10

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v5

    iget-object v11, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v9, v5, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v12, 0x40000000

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->getPaddingBottom()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/PlaylistHeader;->isCompactMode()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9, p1, v11}, Landroid/view/View;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v9, v2, v7

    add-int v1, v9, v6

    iget v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mMinFullHeight:I

    if-le v1, v9, :cond_0

    move v5, v1

    :goto_0
    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/layout/PlaylistHeader;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_0
    add-int v9, v7, v2

    iget v10, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mMinFullHeight:I

    sub-int/2addr v10, v2

    sub-int/2addr v10, v7

    sub-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int v5, v9, v6

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v9, v11, v10}, Landroid/view/View;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mPlaylistControl:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v0, v9

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v3, v9, v10

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v5, v7

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9, v4, v11}, Landroid/view/View;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v9, v4, v11}, Landroid/view/View;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mSubheader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v5, v9

    :cond_2
    add-int/2addr v5, v6

    iget v9, p0, Lcom/google/android/finsky/layout/PlaylistHeader;->mMinFullHeight:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/layout/PlaylistHeader;->setMeasuredDimension(II)V

    goto :goto_1
.end method
