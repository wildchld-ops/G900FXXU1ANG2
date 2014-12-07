.class public Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewListingSmall.java"


# instance fields
.field private mRatingBadge:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->onFinishInflate()V

    const v0, 0x7f0801da

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredWidth()I

    move-result v34

    add-int v34, v34, v14

    add-int v35, v16, v27

    move-object/from16 v0, v33

    move/from16 v1, v16

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/google/android/play/layout/PlayCardThumbnail;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v33, v0

    add-int v33, v33, v14

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v34, v0

    add-int v26, v33, v34

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v33, v0

    add-int v31, v16, v33

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v29, v26, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v34

    add-int v34, v34, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v35

    add-int v35, v35, v31

    move-object/from16 v0, v33

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v33, v0

    add-int v12, v16, v33

    sub-int v11, v32, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v34

    sub-int v34, v11, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v35

    add-int v35, v35, v12

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v12, v11, v2}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v33

    add-int v33, v33, v31

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v25, v33, v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v23, v26, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v34

    add-int v34, v34, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v35

    add-int v35, v35, v25

    move-object/from16 v0, v33

    move/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v33

    add-int v33, v33, v25

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v34, v0

    add-int v22, v33, v34

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v20, v26, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v34, v34, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I

    move-result v35

    add-int v35, v35, v22

    move-object/from16 v0, v33

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    sub-int v33, v5, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v34, v0

    sub-int v17, v33, v34

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v33, v0

    sub-int v19, v11, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v34

    sub-int v34, v19, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredHeight()I

    move-result v35

    sub-int v35, v17, v35

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayCardPriceView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v33, v32, v14

    sub-int v33, v33, v15

    sub-int v33, v33, v9

    div-int/lit8 v33, v33, 0x2

    add-int v7, v14, v33

    sub-int v33, v5, v16

    sub-int v33, v33, v13

    sub-int v33, v33, v6

    div-int/lit8 v33, v33, 0x2

    add-int v8, v16, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v34, v34, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I

    move-result v35

    add-int v35, v35, v8

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->recomputeOverflowAreaIfNeeded()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->measureThumbnailSpanningHeight(I)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getPaddingBottom()I

    move-result v6

    sub-int v26, v4, v9

    sub-int v2, v26, v6

    const/high16 v26, 0x40000000

    move/from16 v0, v26

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v27, v0

    const/high16 v28, 0x40000000

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/layout/PlayCardThumbnail;->measure(II)V

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v26, v0

    add-int v26, v26, v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v20, v26, v27

    sub-int v26, v25, v20

    sub-int v21, v26, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/ImageView;->measure(II)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    sub-int v26, v21, v26

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v24, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/high16 v27, 0x40000000

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    sub-int v26, v21, v26

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v19, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v26, v0

    const/high16 v27, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/google/android/play/layout/PlayCardPriceView;->measure(II)V

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    sub-int v26, v21, v26

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v17, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v26, v0

    const/high16 v27, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v26, v26, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v13, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v26, v6

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredHeight()I

    move-result v27

    sub-int v12, v26, v27

    if-le v13, v12, :cond_0

    sub-int v26, v25, v8

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v27

    sub-int v26, v26, v27

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v10, v26, v27

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v26, v26, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredWidth()I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v14, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v16, v14, v26

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v26, v26, v16

    move/from16 v0, v26

    if-le v0, v10, :cond_0

    sub-int v26, v10, v14

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v5, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mRatingBadge:Landroid/view/View;

    move-object/from16 v26, v0

    const/high16 v27, 0x40000000

    move/from16 v0, v27

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardViewListingSmall;->setMeasuredDimension(II)V

    return-void
.end method
