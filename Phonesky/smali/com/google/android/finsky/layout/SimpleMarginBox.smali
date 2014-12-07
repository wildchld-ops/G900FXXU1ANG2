.class public Lcom/google/android/finsky/layout/SimpleMarginBox;
.super Lcom/google/android/finsky/layout/MarginBox;
.source "SimpleMarginBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    sub-int v5, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v6, v5, v4

    div-int/lit8 v1, v6, 0x2

    const/4 v6, 0x0

    add-int v7, v1, v4

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1    # I
    .param p2    # I

    const/high16 v9, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v8, p0, Lcom/google/android/finsky/layout/SimpleMarginBox;->mMaxContentWidth:I

    if-lez v8, :cond_0

    iget v8, p0, Lcom/google/android/finsky/layout/SimpleMarginBox;->mMaxContentWidth:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildCount()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/SimpleMarginBox;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v4, v8}, Landroid/view/View;->measure(II)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v7, v5}, Lcom/google/android/finsky/layout/SimpleMarginBox;->setMeasuredDimension(II)V

    return-void
.end method
