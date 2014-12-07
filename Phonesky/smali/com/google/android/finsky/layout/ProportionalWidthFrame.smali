.class public Lcom/google/android/finsky/layout/ProportionalWidthFrame;
.super Landroid/view/ViewGroup;
.source "ProportionalWidthFrame.java"


# instance fields
.field private mProportion:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcom/android/vending/R$styleable;->ProportionalWidthFrame:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->mProportion:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->mProportion:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x40000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->measureChild(Landroid/view/View;II)V

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/ProportionalWidthFrame;->setMeasuredDimension(II)V

    return-void
.end method
