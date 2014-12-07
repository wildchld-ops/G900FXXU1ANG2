.class public Lcom/google/android/finsky/layout/BucketRow;
.super Lcom/google/android/finsky/layout/IdentifiableViewGroup;
.source "BucketRow.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/Identifiable;


# instance fields
.field private mSameChildHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getPaddingBottom()I

    move-result v5

    sub-int v0, v2, v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1    # I
    .param p2    # I

    const/4 v11, 0x0

    const/high16 v10, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getPaddingLeft()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    const/4 v4, 0x0

    move v7, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int v8, v1, v3

    div-int v8, v7, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v11, v11, v9}, Lcom/google/android/finsky/layout/BucketRow;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v8, p0, Lcom/google/android/finsky/layout/BucketRow;->mSameChildHeight:Z

    if-eqz v8, :cond_2

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-eq v8, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v8, v2}, Landroid/view/View;->measure(II)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BucketRow;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    invoke-virtual {p0, v5, v4}, Lcom/google/android/finsky/layout/BucketRow;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSameChildHeight(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/BucketRow;->mSameChildHeight:Z

    return-void
.end method
