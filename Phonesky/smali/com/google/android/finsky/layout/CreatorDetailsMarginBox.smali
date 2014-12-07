.class public Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;
.super Lcom/google/android/finsky/layout/MarginBox;
.source "CreatorDetailsMarginBox.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mLeadingBanner:Landroid/view/View;

.field private mRightColumnScroller:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/layout/MarginBox;->onFinishInflate()V

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mContent:Landroid/view/View;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mRightColumnScroller:Landroid/widget/ScrollView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    sub-int v2, p4, p2

    sub-int v0, p5, p3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v6, v6, v1, v5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mRightColumnScroller:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/ScrollView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mContent:Landroid/view/View;

    invoke-virtual {v4, v3, v6, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x40000000

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v5, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mMaxContentWidth:I

    if-le v3, v5, :cond_0

    iget v5, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mMaxContentWidth:I

    sub-int v5, v3, v5

    div-int/lit8 v2, v5, 0x2

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/view/View;->measure(II)V

    sub-int v0, v3, v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->mContent:Landroid/view/View;

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/finsky/layout/CreatorDetailsMarginBox;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0
.end method
