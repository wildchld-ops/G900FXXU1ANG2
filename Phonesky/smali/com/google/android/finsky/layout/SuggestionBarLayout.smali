.class public Lcom/google/android/finsky/layout/SuggestionBarLayout;
.super Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;
.source "SuggestionBarLayout.java"


# instance fields
.field private mSuggestionArrow:Landroid/view/View;

.field private mSuggestionLine1:Landroid/widget/TextView;

.field private mSuggestionLine2:Landroid/widget/TextView;

.field private mSuggestionLineFull:Landroid/widget/TextView;

.field private mSuggestionUnderline:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/finsky/utils/PlayUtils;->getItalicSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0902ac

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;->onFinishInflate()V

    const v0, 0x7f08023d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    const v0, 0x7f08023e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    const v0, 0x7f08023f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    const v0, 0x7f080240

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    const v0, 0x7f080241

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionUnderline:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingRight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingBottom()I

    move-result v8

    sub-int v25, v9, v22

    sub-int v25, v25, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionUnderline:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v15, v22, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    move-object/from16 v25, v0

    sub-int v26, v23, v16

    sub-int v26, v26, v6

    div-int/lit8 v27, v5, 0x2

    sub-int v27, v15, v27

    sub-int v28, v23, v16

    div-int/lit8 v29, v5, 0x2

    add-int v29, v29, v15

    invoke-virtual/range {v25 .. v29}, Landroid/view/View;->layout(IIII)V

    move/from16 v24, v11

    sub-int v25, v23, v11

    sub-int v25, v25, v16

    sub-int v7, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-gt v14, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v25, v0

    div-int/lit8 v26, v17, 0x2

    sub-int v26, v15, v26

    add-int v27, v24, v14

    div-int/lit8 v28, v17, 0x2

    add-int v28, v28, v15

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionUnderline:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionUnderline:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v27, v9, v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v25

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v25, v18, v19

    add-int v25, v25, v10

    div-int/lit8 v25, v25, 0x2

    sub-int v20, v15, v25

    add-int v25, v20, v18

    add-int v21, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int v26, v24, v12

    add-int v27, v20, v18

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int v26, v24, v13

    add-int v27, v21, v19

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1    # I
    .param p2    # I

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingRight()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    invoke-virtual {v5, v8, v8}, Landroid/view/View;->measure(II)V

    sub-int v5, v2, v1

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v0, v5, v6

    const/high16 v5, -0x80000000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v8}, Landroid/widget/TextView;->measure(II)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->measure(II)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->measure(II)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionUnderline:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionUnderline:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v7, 0x40000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Landroid/view/View;->measure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setMeasuredDimension(II)V

    return-void
.end method
