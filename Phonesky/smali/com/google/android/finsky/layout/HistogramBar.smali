.class public Lcom/google/android/finsky/layout/HistogramBar;
.super Landroid/view/View;
.source "HistogramBar.java"


# instance fields
.field private mBarPaint:Landroid/graphics/Paint;

.field private mWidthPercentage:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/HistogramBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/HistogramBar;->mBarPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/finsky/layout/HistogramBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramBar;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramBar;->getWidth()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramBar;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    iget-wide v0, p0, Lcom/google/android/finsky/layout/HistogramBar;->mWidthPercentage:D

    int-to-double v2, v8

    mul-double/2addr v0, v2

    double-to-int v6, v0

    if-gtz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramBar;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramBar;->getHeight()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramBar;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    int-to-float v1, v9

    int-to-float v2, v10

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setWidthPercentage(D)V
    .locals 0
    .param p1    # D

    iput-wide p1, p0, Lcom/google/android/finsky/layout/HistogramBar;->mWidthPercentage:D

    return-void
.end method
