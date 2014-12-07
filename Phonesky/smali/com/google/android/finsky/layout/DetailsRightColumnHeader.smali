.class public Lcom/google/android/finsky/layout/DetailsRightColumnHeader;
.super Landroid/view/ViewGroup;
.source "DetailsRightColumnHeader.java"


# instance fields
.field private mRightMargin:I

.field private mSecondaryContent:Landroid/view/View;

.field private mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mSecondaryContent:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v4, v1, v0

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mSecondaryContent:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1    # I
    .param p2    # I

    const/high16 v6, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->getPaddingTop()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mTitle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mSecondaryContent:Landroid/view/View;

    iget v4, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mRightMargin:I

    sub-int v4, v2, v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRightMargin(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/DetailsRightColumnHeader;->mRightMargin:I

    return-void
.end method
