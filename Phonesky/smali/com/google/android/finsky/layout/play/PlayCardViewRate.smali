.class public Lcom/google/android/finsky/layout/play/PlayCardViewRate;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewRate.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;
    }
.end annotation


# instance fields
.field private mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

.field private mRateBar:Landroid/widget/RatingBar;

.field private mRateBarContainer:Landroid/view/ViewGroup;

.field private mRateBarSeparator:Landroid/view/View;

.field private mRateListener:Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayCardViewRate;FZ)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardViewRate;
    .param p1    # F
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setRating(FZ)V

    return-void
.end method

.method private setRating(FZ)V
    .locals 10
    .param p1    # F
    .param p2    # Z

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gtz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateListener:Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateListener:Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

    invoke-interface {v6, v5, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;->onRate(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/RatingBar;->setRating(F)V

    int-to-float v6, v5

    invoke-static {v6}, Lcom/google/android/finsky/utils/RateReviewHelper;->getRatingAccessibilityDescription(F)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-static {v0, v6, v7}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :cond_2
    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    if-nez v6, :cond_3

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f050002

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->configure(II)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    invoke-virtual {v6, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public bindLoading()V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->bindLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public clearRating()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateListener:Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateListener:Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

    invoke-interface {v1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;->onRateCleared()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setRating(F)V

    iget v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardViewRate$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate$3;-><init>(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->invalidate()V

    return-void
.end method

.method public getCardType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->onFinishInflate()V

    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    const v0, 0x7f0801d7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 48
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getWidth()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v36

    check-cast v36, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardReason;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v43

    const/16 v44, 0x8

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v21

    sub-int v43, v42, v14

    sub-int v43, v43, v15

    sub-int v43, v43, v25

    div-int/lit8 v43, v43, 0x2

    add-int v22, v14, v43

    sub-int v43, v5, v13

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v44, v0

    sub-int v43, v43, v44

    sub-int v24, v43, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v43, v0

    add-int v44, v22, v25

    add-int v45, v24, v21

    move-object/from16 v0, v43

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v43, v42, v15

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v44, v0

    sub-int v28, v43, v44

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v43, v0

    sub-int v43, v24, v43

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v44, v0

    sub-int v43, v43, v44

    sub-int v29, v43, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getMeasuredWidth()I

    move-result v44

    sub-int v44, v28, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v45, v45, v29

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v29

    move/from16 v3, v28

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredWidth()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v43, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v44, v0

    add-int v44, v44, v14

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v45, v0

    add-int v45, v45, v16

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v46, v0

    add-int v46, v46, v14

    add-int v46, v46, v37

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v47, v47, v16

    add-int v47, v47, v35

    invoke-virtual/range {v43 .. v47}, Lcom/google/android/play/layout/PlayCardThumbnail;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardThumbnail;->getRight()I

    move-result v43

    move-object/from16 v0, v36

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v44, v0

    add-int v34, v43, v44

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v43, v0

    add-int v41, v16, v43

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v43, v0

    add-int v39, v34, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v44

    add-int v44, v44, v39

    add-int v45, v41, v38

    move-object/from16 v0, v43

    move/from16 v1, v39

    move/from16 v2, v41

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v43, v0

    add-int v12, v16, v43

    sub-int v11, v42, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v44

    sub-int v44, v11, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v45

    add-int v45, v45, v12

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v12, v11, v2}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getBottom()I

    move-result v43

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v44, v0

    add-int v20, v43, v44

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v43, v0

    sub-int v19, v11, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v44

    sub-int v44, v19, v44

    add-int v45, v20, v17

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayCardPriceView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardPriceView;->getBaseline()I

    move-result v43

    add-int v43, v43, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/play/layout/PlayTextView;->getBaseline()I

    move-result v44

    sub-int v33, v43, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v44

    add-int v44, v44, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v45

    add-int v45, v45, v33

    move-object/from16 v0, v43

    move/from16 v1, v39

    move/from16 v2, v33

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardReason;->getVisibility()I

    move-result v43

    const/16 v44, 0x8

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/play/layout/PlayCardThumbnail;->getBottom()I

    move-result v43

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v44, v0

    sub-int v30, v43, v44

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v43, v0

    add-int v31, v39, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/play/layout/PlayCardReason;->getMeasuredHeight()I

    move-result v44

    sub-int v44, v30, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/play/layout/PlayCardReason;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, v31

    move-object/from16 v0, v43

    move/from16 v1, v31

    move/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayCardReason;->layout(IIII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getVisibility()I

    move-result v43

    const/16 v44, 0x8

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getMeasuredWidth()I

    move-result v44

    add-int v44, v44, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getMeasuredHeight()I

    move-result v45

    add-int v45, v45, v16

    move-object/from16 v0, v43

    move/from16 v1, v16

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->layout(IIII)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v43, v42, v14

    sub-int v43, v43, v15

    sub-int v43, v43, v9

    div-int/lit8 v43, v43, 0x2

    add-int v7, v14, v43

    sub-int v43, v5, v16

    sub-int v43, v43, v13

    sub-int v43, v43, v6

    div-int/lit8 v43, v43, 0x2

    add-int v8, v16, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getMeasuredWidth()I

    move-result v44

    add-int v44, v44, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v45, v45, v8

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 32
    .param p1    # I
    .param p2    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mData:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mData:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getPaddingBottom()I

    move-result v6

    sub-int v28, v27, v7

    sub-int v2, v28, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayCardPriceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayCardReason;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v29

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/ViewGroup;->measure(II)V

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v29

    add-int v28, v28, v29

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v29, v0

    add-int v14, v28, v29

    if-eqz v4, :cond_0

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v28, v0

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v14, v14, v28

    :cond_0
    sub-int v28, v3, v9

    sub-int v28, v28, v6

    sub-int v22, v28, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnailAspectRatio:F

    move/from16 v29, v0

    div-float v28, v28, v29

    sub-int v29, v27, v7

    sub-int v29, v29, v8

    mul-int/lit8 v29, v29, 0x2

    div-int/lit8 v29, v29, 0x3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(FF)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/high16 v30, 0x40000000

    move/from16 v0, v22

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Lcom/google/android/play/layout/PlayCardThumbnail;->measure(II)V

    sub-int v28, v2, v24

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v21, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    if-eqz v4, :cond_7

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    sub-int v28, v2, v28

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v17, v28, v29

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v30, v0

    const/high16 v31, 0x40000000

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/google/android/play/layout/PlayCardPriceView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayCardPriceView;->getMeasuredWidth()I

    move-result v28

    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v11, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mOverflow:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/ImageView;->measure(II)V

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    sub-int v28, v21, v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v26, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mTitle:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v26

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    sub-int v28, v21, v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v20, v28, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayCardReason;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    sub-int v28, v21, v28

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v16, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v16

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/high16 v30, 0x40000000

    invoke-virtual/range {v28 .. v30}, Lcom/google/android/play/layout/PlayCardReason;->measure(II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    move/from16 v5, v22

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarSeparator:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v5, v5, v28

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    move-object/from16 v28, v0

    const/high16 v29, 0x40000000

    move/from16 v0, v29

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    const/high16 v30, 0x40000000

    move/from16 v0, v30

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->measure(II)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setMeasuredDimension(II)V

    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v28, v21, v28

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    sub-int v17, v28, v29

    goto/16 :goto_1
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 7
    .param p1    # Landroid/widget/RatingBar;
    .param p2    # F
    .param p3    # Z

    const/4 v6, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, v6}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setRating(FZ)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getLoggingData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    const/16 v4, 0x4b8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v4/app/FragmentActivity;

    if-nez v3, :cond_1

    const-string v3, "View context is not a fragment activity in Rate Card"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/RatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardViewRate$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate$2;-><init>(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    invoke-static {v1, v3, v0, v4}, Lcom/google/android/finsky/utils/RateReviewHelper;->rateDocument(Lcom/google/android/finsky/api/model/Document;ILandroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;I)V
    .locals 8
    .param p1    # Ljava/lang/Object;
    .param p2    # I

    const/4 v5, 0x0

    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mBackendId:I

    if-ne v4, p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->setData(Ljava/lang/Object;I)V

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    if-nez v4, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRatingBarWideLayoutId(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    iput-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b008f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/widget/RatingBar;->setPadding(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRateString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, v3}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RatingBar;->setNextFocusUpId(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setNextFocusDownId(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBarContainer:Landroid/view/ViewGroup;

    new-instance v5, Lcom/google/android/finsky/layout/play/PlayCardViewRate$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    move v1, v5

    goto/16 :goto_0
.end method

.method public setRateListener(Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateListener:Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;

    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mContentOverlay:Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mRateBar:Landroid/widget/RatingBar;

    iget v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    if-eq v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    goto :goto_0
.end method
