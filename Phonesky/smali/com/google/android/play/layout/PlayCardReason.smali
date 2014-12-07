.class public Lcom/google/android/play/layout/PlayCardReason;
.super Lcom/google/android/play/layout/PlaySeparatorLayout;
.source "PlayCardReason.java"


# instance fields
.field private final mAvatarLargeSize:I

.field private final mAvatarRegularSize:I

.field private mAvatarSize:I

.field private mMode:I

.field private mReason:Landroid/widget/TextView;

.field private mReasonImage:Landroid/widget/ImageView;

.field private final mTextLargeSize:I

.field private mTextOnlyMarginLeft:I

.field private final mTextRegularSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayCardReason;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlaySeparatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/play/R$dimen;->play_card_reason_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarRegularSize:I

    sget v1, Lcom/google/android/play/R$dimen;->play_card_reason_avatar_large_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarLargeSize:I

    sget v1, Lcom/google/android/play/R$dimen;->play_reason_regular_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardReason;->mTextRegularSize:I

    sget v1, Lcom/google/android/play/R$dimen;->play_reason_large_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardReason;->mTextLargeSize:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/play/layout/PlayCardReason;->mMode:I

    return-void
.end method

.method private syncWithCurrentSizeMode()V
    .locals 3

    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarRegularSize:I

    :goto_0
    iput v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarSize:I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mTextRegularSize:I

    int-to-float v0, v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarLargeSize:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mTextLargeSize:I

    int-to-float v0, v0

    goto :goto_1
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlaySeparatorLayout;->onFinishInflate()V

    sget v0, Lcom/google/android/play/R$id;->li_reason:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardReason;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    sget v0, Lcom/google/android/play/R$id;->li_thumbnail_reason:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardReason;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/play/layout/PlayCardReason;->syncWithCurrentSizeMode()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardReason;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardReason;->getPaddingTop()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_0

    sub-int v13, v2, v8

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v9, v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/play/layout/PlayCardReason;->mTextOnlyMarginLeft:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/play/layout/PlayCardReason;->mTextOnlyMarginLeft:I

    add-int/2addr v15, v10

    add-int v16, v9, v8

    move/from16 v0, v16

    invoke-virtual {v13, v14, v9, v15, v0}, Landroid/widget/TextView;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v12, v5, v13

    if-le v3, v8, :cond_1

    sub-int v13, v2, v3

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v6, v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    add-int v15, v6, v3

    invoke-virtual {v13, v14, v6, v5, v15}, Landroid/widget/ImageView;->layout(IIII)V

    sub-int v13, v2, v8

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v11, v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    add-int v14, v12, v10

    add-int v15, v11, v8

    invoke-virtual {v13, v12, v11, v14, v15}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    :cond_1
    sub-int v13, v2, v8

    sub-int/2addr v13, v7

    div-int/lit8 v13, v13, 0x2

    add-int v1, v7, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    add-int v15, v1, v3

    invoke-virtual {v13, v14, v1, v5, v15}, Landroid/widget/ImageView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    add-int v14, v12, v10

    add-int v15, v1, v8

    invoke-virtual {v13, v12, v1, v14, v15}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/high16 v10, 0x40000000

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardReason;->getPaddingLeft()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardReason;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    iget-object v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    iget v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mTextOnlyMarginLeft:I

    sub-int/2addr v5, v8

    :goto_1
    iget-object v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->measure(II)V

    iget v7, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarSize:I

    iget-object v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardReason;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardReason;->getPaddingBottom()I

    move-result v8

    add-int v2, v7, v8

    invoke-virtual {p0, v6, v2}, Lcom/google/android/play/layout/PlayCardReason;->setMeasuredDimension(II)V

    return-void

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarSize:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mReasonImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    iget v8, p0, Lcom/google/android/play/layout/PlayCardReason;->mAvatarSize:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    goto :goto_1
.end method

.method public setReasonText(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mReason:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/google/android/play/layout/PlayCardReason;->mTextOnlyMarginLeft:I

    return-void
.end method

.method public setSizeMode(I)V
    .locals 3
    .param p1    # I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported size mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/play/layout/PlayCardReason;->mMode:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/play/layout/PlayCardReason;->mMode:I

    invoke-direct {p0}, Lcom/google/android/play/layout/PlayCardReason;->syncWithCurrentSizeMode()V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardReason;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardReason;->invalidate()V

    :cond_1
    return-void
.end method
