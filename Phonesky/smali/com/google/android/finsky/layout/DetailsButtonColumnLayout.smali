.class public Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;
.super Landroid/widget/LinearLayout;
.source "DetailsButtonColumnLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .param p1    # I
    .param p2    # I

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v11, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    instance-of v8, v1, Lcom/google/android/play/layout/PlayActionButton;

    if-eqz v8, :cond_0

    invoke-virtual {v1, v10, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    :cond_2
    const/high16 v8, 0x40000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_5

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v11, :cond_3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    instance-of v8, v1, Lcom/google/android/play/layout/PlayActionButton;

    if-eqz v8, :cond_4

    invoke-virtual {v1, v0, v10}, Landroid/view/View;->measure(II)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v4, v8, v9

    add-int/2addr v5, v4

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0, v8, v5}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->setMeasuredDimension(II)V

    return-void
.end method
