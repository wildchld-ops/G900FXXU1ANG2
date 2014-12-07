.class public Lcom/google/android/play/layout/PlayCardViewSmall;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewSmall.java"


# instance fields
.field private mMode:I

.field protected mRatingBadgeContainer:Landroid/view/View;

.field private final mTextContentHeight:I

.field private mVerticalBump:I

.field private final mVerticalBumpLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayCardViewSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/play/R$dimen;->play_small_card_content_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTextContentHeight:I

    sget v1, Lcom/google/android/play/R$dimen;->play_card_extra_vspace:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBumpLimit:I

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->onFinishInflate()V

    sget v0, Lcom/google/android/play/R$id;->rating_badge_container:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 42
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getWidth()I

    move-result v36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v37, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v38, v0

    add-int v38, v38, v14

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v39, v0

    add-int v39, v39, v16

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v40, v40, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredWidth()I

    move-result v41

    add-int v40, v40, v41

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v41, v0

    add-int v41, v41, v16

    add-int v41, v41, v30

    invoke-virtual/range {v37 .. v41}, Lcom/google/android/play/layout/PlayCardThumbnail;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardReason;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v37, v16, v30

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    add-int v35, v37, v38

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v37, v0

    add-int v33, v14, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v38, v38, v33

    add-int v39, v35, v32

    move-object/from16 v0, v37

    move/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    add-int v37, v16, v30

    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    add-int v12, v37, v38

    sub-int v11, v36, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v38

    sub-int v38, v11, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v39

    add-int v39, v39, v12

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v12, v11, v2}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    move/from16 v37, v0

    if-nez v37, :cond_2

    sub-int v37, v5, v13

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    sub-int v37, v37, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    sub-int v20, v37, v38

    :goto_0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v37, v0

    sub-int v19, v11, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v38

    sub-int v38, v19, v38

    add-int v39, v20, v17

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayCardPriceView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    move/from16 v37, v0

    if-nez v37, :cond_3

    add-int v37, v35, v32

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    add-int v29, v37, v38

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v38

    add-int v38, v38, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v39

    add-int v39, v39, v29

    move-object/from16 v0, v37

    move/from16 v1, v33

    move/from16 v2, v29

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    move/from16 v37, v0

    if-nez v37, :cond_4

    sub-int v37, v5, v13

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    sub-int v21, v37, v38

    :goto_2
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v37, v0

    add-int v23, v14, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v37, v0

    sub-int v38, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    add-int v39, v39, v23

    move-object/from16 v0, v37

    move/from16 v1, v23

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardReason;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    sub-int v37, v5, v13

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    sub-int v25, v37, v38

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v37, v0

    add-int v26, v14, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/play/layout/PlayCardReason;->getMeasuredHeight()I

    move-result v38

    sub-int v38, v25, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/play/layout/PlayCardReason;->getMeasuredWidth()I

    move-result v39

    add-int v39, v39, v26

    move-object/from16 v0, v37

    move/from16 v1, v26

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayCardReason;->layout(IIII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v37, v36, v14

    sub-int v37, v37, v15

    sub-int v37, v37, v9

    div-int/lit8 v37, v37, 0x2

    add-int v7, v14, v37

    sub-int v37, v5, v16

    sub-int v37, v37, v13

    sub-int v37, v37, v6

    div-int/lit8 v37, v37, 0x2

    add-int v8, v16, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    add-int v38, v38, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    add-int v39, v39, v8

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->recomputeOverflowAreaIfNeeded()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getBottom()I

    move-result v37

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    move/from16 v38, v0

    add-int v20, v37, v38

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardPriceView;->getBaseline()I

    move-result v37

    add-int v37, v37, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/android/play/layout/PlayTextView;->getBaseline()I

    move-result v38

    sub-int v29, v37, v38

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/play/layout/PlayCardPriceView;->getBottom()I

    move-result v21

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1    # I
    .param p2    # I

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/play/layout/PlayCardViewSmall;->measureThumbnailSpanningWidth(I)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingRight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewSmall;->getPaddingBottom()I

    move-result v7

    sub-int v27, v26, v8

    sub-int v2, v27, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v27, v0

    add-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTextContentHeight:I

    move/from16 v28, v0

    div-int/lit8 v29, v2, 0x2

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    add-int v27, v27, v28

    add-int v6, v27, v7

    const/high16 v27, 0x40000000

    move/from16 v0, v27

    if-ne v4, v0, :cond_4

    if-lez v5, :cond_4

    move v3, v5

    :goto_0
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    sub-int v27, v2, v27

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v22, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v27, v0

    const/high16 v28, 0x40000000

    move/from16 v0, v22

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    invoke-virtual/range {v27 .. v29}, Lcom/google/android/play/layout/PlayCardThumbnail;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardReason;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/google/android/play/layout/PlayCardPriceView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v27

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v12, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/ImageView;->measure(II)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    sub-int v27, v2, v27

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v24, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/high16 v28, 0x40000000

    move/from16 v0, v24

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-eqz v27, :cond_7

    sub-int v27, v2, v12

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v14, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v27, v0

    const/high16 v28, -0x80000000

    move/from16 v0, v28

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    sub-int v27, v2, v27

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v17, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    sub-int v17, v17, v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    const/high16 v28, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardReason;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    sub-int v27, v2, v27

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v16, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v27, v0

    const/high16 v28, 0x40000000

    move/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    const/high16 v29, 0x40000000

    invoke-virtual/range {v27 .. v29}, Lcom/google/android/play/layout/PlayCardReason;->measure(II)V

    :cond_2
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v28, v0

    add-int v20, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    move/from16 v27, v0

    if-nez v27, :cond_5

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mRatingBadgeContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v20, v20, v27

    :cond_3
    :goto_1
    sub-int v27, v3, v10

    sub-int v27, v27, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    sub-int v25, v27, v20

    if-gtz v25, :cond_6

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/layout/PlayCardViewSmall;->setMeasuredDimension(II)V

    return-void

    :cond_4
    move v3, v6

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardReason;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayCardReason;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v20, v20, v27

    goto :goto_1

    :cond_6
    div-int/lit8 v27, v25, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBumpLimit:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    goto :goto_2

    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/play/layout/PlayCardViewSmall;->mVerticalBump:I

    goto :goto_3
.end method

.method public setReasonVisible(Z)V
    .locals 4
    .param p1    # Z

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    if-ne v0, v3, :cond_1

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    iget v3, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    if-nez v3, :cond_2

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mSupportsSubtitleAndRating:Z

    iget v3, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mMode:I

    if-ne v3, v1, :cond_3

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewSmall;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1
.end method
