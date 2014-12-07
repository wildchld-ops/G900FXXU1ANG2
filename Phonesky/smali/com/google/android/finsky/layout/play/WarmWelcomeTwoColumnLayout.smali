.class public Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;
.super Landroid/view/ViewGroup;
.source "WarmWelcomeTwoColumnLayout.java"


# instance fields
.field public mContent:Landroid/view/View;

.field public mGraphic:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f08024f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mGraphic:Landroid/view/View;

    const v0, 0x7f080250

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mContent:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mGraphic:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mGraphic:Landroid/view/View;

    add-int v4, v1, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mGraphic:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mContent:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    div-int/lit8 v2, v1, 0x2

    sub-int v3, v1, v2

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mContent:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->mGraphic:Landroid/view/View;

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/layout/play/WarmWelcomeTwoColumnLayout;->setMeasuredDimension(II)V

    return-void
.end method
