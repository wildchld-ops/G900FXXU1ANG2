.class public Lcom/google/android/finsky/layout/DetailsContentLayout;
.super Landroid/widget/LinearLayout;
.source "DetailsContentLayout.java"


# instance fields
.field private mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mSubscriptionsSection:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private findViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eq v0, v2, :cond_0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    :cond_0
    return-void
.end method


# virtual methods
.method public getSummaryStripTop()I
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->findViews()V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mSubscriptionsSection:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mSubscriptionsSection:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mSubscriptionsSection:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mSubscriptionsSection:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->getScrollY()I

    move-result v2

    if-nez v0, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    move v7, v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0800a4

    if-ne v9, v10, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getSummaryStripTop()I

    move-result v6

    add-int v9, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v0, v4, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    add-int v9, v4, v8

    add-int v10, v7, v1

    invoke-virtual {v0, v4, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v1

    add-int/2addr v7, v9

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/DetailsContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0800c3

    if-ne v4, v5, :cond_0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsContentLayout;->mSubscriptionsSection:Landroid/view/View;

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0800a4

    if-eq v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/google/android/finsky/layout/DetailsContentLayout;->setMeasuredDimension(II)V

    return-void
.end method
