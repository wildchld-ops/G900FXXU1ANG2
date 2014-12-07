.class public Lcom/google/android/finsky/layout/MaxSizeLinearLayout;
.super Lcom/google/android/finsky/layout/MaxWidthLinearLayout;
.source "MaxSizeLinearLayout.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/MaxSizeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/MaxWidthLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/vending/R$styleable;->MaxSizeLayoutHeight:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/MaxSizeLinearLayout;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/finsky/layout/MaxSizeLinearLayout;->mMaxHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/MaxSizeLinearLayout;->mMaxHeight:I

    if-ge v2, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/finsky/layout/MaxSizeLinearLayout;->mMaxHeight:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/layout/MaxWidthLinearLayout;->onMeasure(II)V

    return-void
.end method
