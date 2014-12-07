.class public Lcom/google/android/finsky/layout/play/PlayCardViewPerson;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewPerson.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

.field private mVerticalBump:I

.field private final mVerticalBumpLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mVerticalBumpLimit:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayCardViewPerson;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardViewPerson;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mCircles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/play/PlayCardViewPerson;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardViewPerson;
    .param p1    # Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mCircles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PlayCardViewPerson;)Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayCardViewPerson;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    return-object v0
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    if-ne p1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v4/app/FragmentActivity;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mCircles:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mCircles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardViewPerson$2;

    invoke-direct {v4, p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson$2;-><init>(Lcom/google/android/finsky/layout/play/PlayCardViewPerson;Lcom/google/android/finsky/api/model/Document;)V

    invoke-static {v0, v3, v2, v4}, Lcom/google/android/finsky/utils/GPlusUtils;->checkGPlusAndLaunchCirclePicker(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->onFinishInflate()V

    const v1, 0x7f0801bc

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    new-instance v1, Lcom/google/android/finsky/utils/image/CircleCropTransformation;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/utils/image/CircleCropTransformation;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setBitmapTransformation(Lcom/google/android/finsky/utils/image/BitmapTransformation;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getWidth()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v27, v27, v14

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v28, v0

    add-int v28, v28, v16

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v29, v29, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/play/layout/PlayCardThumbnail;->getMeasuredWidth()I

    move-result v30

    add-int v29, v29, v30

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v30, v0

    add-int v30, v30, v16

    add-int v30, v30, v19

    invoke-virtual/range {v26 .. v30}, Lcom/google/android/play/layout/PlayCardThumbnail;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v26, v16, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mVerticalBump:I

    move/from16 v27, v0

    add-int v24, v26, v27

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v22, v14, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v22

    add-int v28, v24, v21

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    add-int v26, v24, v21

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mVerticalBump:I

    move/from16 v27, v0

    add-int v18, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v18

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v18

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    :cond_0
    sub-int v26, v8, v13

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v27

    sub-int v6, v26, v27

    sub-int v26, v25, v14

    sub-int v26, v26, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredWidth()I

    move-result v27

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v5, v14, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v6

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v26, v25, v14

    sub-int v26, v26, v15

    sub-int v26, v26, v12

    div-int/lit8 v26, v26, 0x2

    add-int v10, v14, v26

    sub-int v26, v8, v16

    sub-int v26, v26, v13

    sub-int v26, v26, v9

    div-int/lit8 v26, v26, 0x2

    add-int v11, v16, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v11

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1    # I
    .param p2    # I

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->measureThumbnailSpanningWidth(I)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getPaddingBottom()I

    move-result v6

    sub-int v19, v18, v7

    sub-int v3, v19, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v14, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    move-object/from16 v19, v0

    const/high16 v20, 0x40000000

    move/from16 v0, v20

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v21, v0

    const/high16 v22, 0x40000000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/play/layout/PlayCardThumbnail;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/play/layout/PlayTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x40000000

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->measure(II)V

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v2, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v19, v0

    const/high16 v20, 0x40000000

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    sub-int v19, v3, v19

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x40000000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    :cond_0
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v20

    add-int v19, v19, v20

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v20

    add-int v19, v19, v20

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->getMeasuredHeight()I

    move-result v20

    add-int v19, v19, v20

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v20, v0

    add-int v12, v19, v20

    sub-int v19, v5, v9

    sub-int v19, v19, v6

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v17, v19, v12

    if-gtz v17, :cond_1

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mVerticalBump:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mLoadingIndicator:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->setMeasuredDimension(II)V

    return-void

    :cond_1
    div-int/lit8 v19, v17, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mVerticalBumpLimit:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    goto :goto_0

    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mVerticalBump:I

    goto :goto_1
.end method

.method public setData(Ljava/lang/Object;I)V
    .locals 5
    .param p1    # Ljava/lang/Object;
    .param p2    # I

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->setData(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mCircles:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/layout/play/PlayCardViewPerson$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewPerson$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardViewPerson;Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/GPlusUtils;->getCircles(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mGplusCircleStatusButton:Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewPerson;->mCircles:Ljava/util/List;

    invoke-virtual {v2, v1, v3, p0}, Lcom/google/android/finsky/layout/play/PlayPersonFollowButton;->configure(Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
