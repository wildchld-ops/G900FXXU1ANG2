.class public Lcom/google/android/finsky/layout/ErrorFooter;
.super Lcom/google/android/finsky/layout/IdentifiableViewGroup;
.source "ErrorFooter.java"


# instance fields
.field private mErrorMessage:Landroid/widget/TextView;

.field private mRetryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ErrorFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;->onFinishInflate()V

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ErrorFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ErrorFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingBottom()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int v17, v8, v12

    sub-int v17, v17, v9

    sub-int v17, v17, v13

    div-int/lit8 v17, v17, 0x2

    add-int v14, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    sub-int v18, v16, v11

    sub-int v18, v18, v15

    sub-int v19, v16, v11

    add-int v20, v14, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/widget/Button;->layout(IIII)V

    sub-int v17, v8, v12

    sub-int v17, v17, v9

    sub-int v17, v17, v4

    div-int/lit8 v17, v17, 0x2

    add-int v6, v12, v17

    sub-int v17, v16, v10

    sub-int v17, v17, v11

    sub-int v17, v17, v15

    sub-int v17, v17, v7

    div-int/lit8 v17, v17, 0x2

    add-int v5, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    move-object/from16 v17, v0

    add-int v18, v5, v7

    add-int v19, v6, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingRight()I

    move-result v3

    sub-int v5, v4, v2

    sub-int v0, v5, v3

    iget-object v5, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    div-int/lit8 v6, v0, 0x2

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/Button;->measure(II)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v0, v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ErrorFooter;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/ErrorFooter;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v1, v5, v6

    invoke-virtual {p0, v4, v1}, Lcom/google/android/finsky/layout/ErrorFooter;->setMeasuredDimension(II)V

    return-void
.end method
