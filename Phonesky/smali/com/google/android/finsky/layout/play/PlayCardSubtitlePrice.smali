.class public Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;
.super Landroid/widget/RelativeLayout;
.source "PlayCardSubtitlePrice.java"


# instance fields
.field protected mPrice:Landroid/view/View;

.field protected mSubtitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v7, 0x0

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBaseline()I

    move-result v6

    sub-int v2, v5, v6

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v1, v4, v5

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v2, v1, v7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v3, v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mPrice:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->mSubtitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardSubtitlePrice;->setMeasuredDimension(II)V

    return-void
.end method
