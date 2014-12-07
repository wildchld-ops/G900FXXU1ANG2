.class public Lcom/google/android/finsky/layout/DetailsTextLayout;
.super Landroid/widget/LinearLayout;
.source "DetailsTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/widget/TextView;

.field private mCurrentMaxLines:I

.field private mDefaultMaxLines:I

.field private mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

.field private mPrevWidth:I


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


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v2, p4, p2

    if-lez v2, :cond_0

    iget v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mPrevWidth:I

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mDefaultMaxLines:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mCurrentMaxLines:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

    invoke-interface {v4, v0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;->metricsAvailable(II)V

    iput v2, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mPrevWidth:I

    goto :goto_0
.end method

.method public setCurrentMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iput p1, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mCurrentMaxLines:I

    return-void
.end method

.method public setDefaultMaxLines(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mDefaultMaxLines:I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    return-void
.end method

.method public setMetricsListener(Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

    return-void
.end method
