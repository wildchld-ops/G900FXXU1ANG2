.class public Lcom/google/android/finsky/layout/DetailsRightColumn;
.super Landroid/widget/LinearLayout;
.source "DetailsRightColumn.java"


# instance fields
.field private mBottomBannerHeight:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isPartOfBottomBanner(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800e6

    if-eq v0, v1, :cond_0

    const v1, 0x7f0800e7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toApplyRightPadding(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800e7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/high16 v10, 0x40000000

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DetailsRightColumn;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->isPartOfBottomBanner(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v6, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    sub-int/2addr v1, v6

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->toApplyRightPadding(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    if-eqz v4, :cond_3

    iget v6, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mBottomBannerHeight:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_3
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v6, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mBottomBannerHeight:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBottomBannerHeight(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mBottomBannerHeight:I

    return-void
.end method

.method public setRightMargin(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    return-void
.end method
