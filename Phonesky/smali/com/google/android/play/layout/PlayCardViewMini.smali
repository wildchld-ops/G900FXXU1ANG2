.class public Lcom/google/android/play/layout/PlayCardViewMini;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewMini.java"


# instance fields
.field private mCurrTitleMaxLines:I

.field private final mPriceThreshold:I

.field private final mTextContentHeight:I

.field private mVerticalOverlap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayCardViewMini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/play/R$dimen;->play_mini_card_content_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewMini;->mTextContentHeight:I

    sget v1, Lcom/google/android/play/R$dimen;->play_mini_card_price_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewMini;->mPriceThreshold:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewMini;->mCurrTitleMaxLines:I

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v14

    add-int v32, v16, v25

    move-object/from16 v0, v30

    move/from16 v1, v16

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/google/android/play/layout/PlayCardThumbnail;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v30, v16, v25

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mVerticalOverlap:I

    move/from16 v31, v0

    sub-int v28, v30, v31

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v26, v14, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v28

    move-object/from16 v0, v30

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    add-int v30, v16, v25

    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    sub-int v11, v29, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v31

    sub-int v31, v11, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v12

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v12, v11, v2}, Landroid/widget/ImageView;->layout(IIII)V

    sub-int v30, v5, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mVerticalOverlap:I

    move/from16 v31, v0

    add-int v17, v30, v31

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v19, v11, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v31

    sub-int v31, v19, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredHeight()I

    move-result v32

    sub-int v32, v17, v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayCardPriceView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getLineCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v28

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v31, v0

    add-int v24, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v24

    move-object/from16 v0, v30

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    sub-int v30, v5, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mVerticalOverlap:I

    move/from16 v31, v0

    add-int v21, v30, v31

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v22, v14, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v31

    sub-int v31, v21, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v32

    add-int v32, v32, v22

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RatingBar;->layout(IIII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v30, v29, v14

    sub-int v30, v30, v15

    sub-int v30, v30, v9

    div-int/lit8 v30, v30, 0x2

    add-int v7, v14, v30

    sub-int v30, v5, v16

    sub-int v30, v30, v13

    sub-int v30, v30, v6

    div-int/lit8 v30, v30, 0x2

    add-int v8, v16, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v8

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->recomputeOverflowAreaIfNeeded()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredHeight()I

    move-result v30

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/play/layout/PlayCardPriceView;->getBaseline()I

    move-result v31

    add-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/play/layout/PlayTextView;->getBaseline()I

    move-result v31

    sub-int v24, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v24

    move-object/from16 v0, v30

    move/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 30

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/play/layout/PlayCardViewMini;->measureThumbnailSpanningWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTextContentHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingTop()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingBottom()I

    move-result v25

    add-int v8, v24, v25

    const/high16 v24, 0x40000000

    move/from16 v0, v24

    if-ne v6, v0, :cond_1

    if-lez v7, :cond_1

    move v5, v7

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    const/16 v24, 0x0

    sub-int v25, v8, v5

    div-int/lit8 v25, v25, 0x3

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/play/layout/PlayCardViewMini;->mVerticalOverlap:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewMini;->getPaddingRight()I

    move-result v11

    sub-int v24, v22, v10

    sub-int v3, v24, v11

    const/high16 v24, 0x40000000

    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/google/android/play/layout/PlayCardThumbnail;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mBackendId:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayCardPriceView;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/google/android/play/layout/PlayCardPriceView;->measure(II)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v24

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v13, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/ImageView;->measure(II)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    sub-int v24, v3, v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v20, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/high16 v25, 0x40000000

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RatingBar;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v15

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    add-int v24, v24, v15

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int v21, v24, v13

    move/from16 v0, v21

    if-le v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RatingBar;->setVisibility(I)V

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/google/android/play/layout/PlayCardViewMini;->setMeasuredDimension(II)V

    return-void

    :cond_1
    move v5, v8

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mIsItemOwned:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPriceThreshold:I

    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    :cond_3
    const/4 v9, 0x1

    :goto_4
    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const/16 v24, 0x0

    const/high16 v25, 0x40000000

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/layout/PlayCardPriceView;->measure(II)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getLineCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/play/layout/PlayCardPriceView;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_9

    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    sub-int v24, v3, v24

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    sub-int v17, v24, v25

    :goto_5
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fd3333333333333L

    int-to-double v0, v3

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    cmpg-double v24, v24, v26

    if-gez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    sub-int v24, v3, v24

    sub-int v17, v24, v13

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewMini;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v24, v0

    const/high16 v25, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    goto/16 :goto_3
.end method

.method public setTitleMaxLines(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/play/layout/PlayCardViewMini;->mCurrTitleMaxLines:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/play/layout/PlayCardViewMini;->mCurrTitleMaxLines:I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewMini;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method
