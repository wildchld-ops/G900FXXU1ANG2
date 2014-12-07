.class public Lcom/google/android/play/layout/PlayRatingBadgeContainer;
.super Landroid/widget/FrameLayout;
.source "PlayRatingBadgeContainer.java"


# instance fields
.field private mBadge:Landroid/view/View;

.field private mRatingBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayRatingBadgeContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/google/android/play/R$id;->li_rating:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    sget v0, Lcom/google/android/play/R$id;->li_badge:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v0, :cond_0

    const/high16 v2, 0x40000000

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mRatingBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->mBadge:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/play/layout/PlayRatingBadgeContainer;->setMeasuredDimension(II)V

    return-void
.end method
