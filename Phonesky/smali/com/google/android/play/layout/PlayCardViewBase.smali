.class public abstract Lcom/google/android/play/layout/PlayCardViewBase;
.super Lcom/google/android/play/layout/AccessibleRelativeLayout;
.source "PlayCardViewBase.java"


# static fields
.field private static final NO_OVERFLOW_FOCUS:Z


# instance fields
.field protected mBackendId:I

.field private final mCardInset:I

.field private mCheckedDrawable:Landroid/graphics/drawable/Drawable;

.field protected mData:Ljava/lang/Object;

.field protected mDescription:Lcom/google/android/play/layout/PlayTextView;

.field private mDisabledDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIsItemOwned:Z

.field protected mItemBadge:Lcom/google/android/play/layout/PlayTextView;

.field protected mLoadingIndicator:Landroid/view/View;

.field protected mLoggingData:Ljava/lang/Object;

.field private final mOldOverflowArea:Landroid/graphics/Rect;

.field protected mOverflow:Landroid/widget/ImageView;

.field private final mOverflowArea:Landroid/graphics/Rect;

.field private final mOverflowTouchExtend:I

.field private final mOwnershipRenderingType:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field protected mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

.field protected mRatingBar:Landroid/widget/RatingBar;

.field protected mReason1:Lcom/google/android/play/layout/PlayCardReason;

.field protected mReason2:Lcom/google/android/play/layout/PlayCardReason;

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private final mShowInlineCreatorBadge:Z

.field protected mSubtitle:Lcom/google/android/play/layout/PlayTextView;

.field protected mSupportsSubtitleAndRating:Z

.field protected final mTextOnlyReasonMarginLeft:I

.field protected mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

.field protected mThumbnailAspectRatio:F

.field protected mTitle:Landroid/widget/TextView;

.field private mToDisplayAsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/play/layout/PlayCardViewBase;->NO_OVERFLOW_FOCUS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/AccessibleRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/play/R$dimen;->play_card_overflow_touch_extend:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowTouchExtend:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOldOverflowArea:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/android/play/R$styleable;->PlayCardBaseView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mShowInlineCreatorBadge:Z

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSupportsSubtitleAndRating:Z

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/play/R$dimen;->play_card_reason_text_extra_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mTextOnlyReasonMarginLeft:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOwnershipRenderingType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/play/R$dimen;->play_card_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    invoke-virtual {p0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public bindLoading()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/google/android/play/layout/PlayCardViewBase;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardThumbnail;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardPriceView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mRatingBar:Landroid/widget/RatingBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mItemBadge:Lcom/google/android/play/layout/PlayTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mItemBadge:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    return-void
.end method

.method public clearCardState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardThumbnail;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getHeight()I

    move-result v0

    iget-boolean v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mToDisplayAsDisabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/play/R$color;->play_dismissed_overlay:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    iput-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDisabledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/play/R$drawable;->overlay_pressed_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v7, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v8, v0, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/play/R$drawable;->overlay_focused_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v7, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v8, v0, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->invalidate()V

    return-void
.end method

.method public abstract getCardType()I
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Lcom/google/android/play/layout/PlayTextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    return-object v0
.end method

.method public getItemBadge()Lcom/google/android/play/layout/PlayTextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mItemBadge:Lcom/google/android/play/layout/PlayTextView;

    return-object v0
.end method

.method public getLoadingIndicator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mLoadingIndicator:Landroid/view/View;

    return-object v0
.end method

.method public getLoggingData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mLoggingData:Ljava/lang/Object;

    return-object v0
.end method

.method public getOverflow()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOwnershipRenderingType()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOwnershipRenderingType:I

    return v0
.end method

.method public getPrice()Lcom/google/android/play/layout/PlayCardPriceView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mRatingBar:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getReason1()Lcom/google/android/play/layout/PlayCardReason;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    return-object v0
.end method

.method public getReason2()Lcom/google/android/play/layout/PlayCardReason;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    return-object v0
.end method

.method public getSubtitle()Lcom/google/android/play/layout/PlayTextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    return-object v0
.end method

.method public getTextOnlyReasonMarginLeft()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mTextOnlyReasonMarginLeft:I

    return v0
.end method

.method public getThumbnail()Lcom/google/android/play/layout/PlayCardThumbnail;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected measureThumbnailSpanningHeight(I)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getPaddingBottom()I

    move-result v1

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    sub-int v6, v0, v2

    sub-int/2addr v6, v1

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v3, v6, v7

    int-to-float v6, v3

    iget v7, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnailAspectRatio:F

    div-float/2addr v6, v7

    float-to-int v5, v6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0
.end method

.method protected measureThumbnailSpanningWidth(I)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getPaddingRight()I

    move-result v2

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    sub-int v6, v0, v1

    sub-int/2addr v6, v2

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v5, v6, v7

    iget v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnailAspectRatio:F

    int-to-float v7, v5

    mul-float/2addr v6, v7

    float-to-int v3, v6

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->getInstance()Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->cardAttachedToWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->getInstance()Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->cardDetachedFromWindow(Lcom/google/android/play/layout/PlayCardViewBase;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getHeight()I

    move-result v0

    instance-of v4, p0, Landroid/widget/Checkable;

    if-eqz v4, :cond_2

    move-object v4, p0

    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4}, Landroid/widget/Checkable;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/play/R$drawable;->overlay_pressed_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v7, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v8, v0, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCheckedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/play/R$drawable;->overlay_focused_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v6, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    iget v7, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mCardInset:I

    sub-int v8, v0, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/google/android/play/R$id;->li_thumbnail_frame:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardThumbnail;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    sget v0, Lcom/google/android/play/R$id;->li_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/google/android/play/R$id;->li_subtitle:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayTextView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSubtitle:Lcom/google/android/play/layout/PlayTextView;

    sget v0, Lcom/google/android/play/R$id;->li_rating:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mRatingBar:Landroid/widget/RatingBar;

    sget v0, Lcom/google/android/play/R$id;->li_badge:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayTextView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mItemBadge:Lcom/google/android/play/layout/PlayTextView;

    sget v0, Lcom/google/android/play/R$id;->li_description:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayTextView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    sget v0, Lcom/google/android/play/R$id;->li_overflow:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    sget v0, Lcom/google/android/play/R$id;->li_price:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardPriceView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mPrice:Lcom/google/android/play/layout/PlayCardPriceView;

    sget v0, Lcom/google/android/play/R$id;->li_reason_1:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardReason;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mReason1:Lcom/google/android/play/layout/PlayCardReason;

    sget v0, Lcom/google/android/play/R$id;->li_reason_2:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardReason;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mReason2:Lcom/google/android/play/layout/PlayCardReason;

    sget v0, Lcom/google/android/play/R$id;->loading_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mLoadingIndicator:Landroid/view/View;

    sget-boolean v0, Lcom/google/android/play/layout/PlayCardViewBase;->NO_OVERFLOW_FOCUS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/play/layout/PlayCardViewBase;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->recomputeOverflowAreaIfNeeded()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/AccessibleRelativeLayout;->onMeasure(II)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v5, v4}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected final recomputeOverflowAreaIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowTouchExtend:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowTouchExtend:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowTouchExtend:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowTouchExtend:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOldOverflowArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOldOverflowArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOldOverflowArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOldOverflowArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_0

    :cond_2
    new-instance v0, Lcom/google/android/play/utils/PlayTouchDelegate;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflow:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/utils/PlayTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOldOverflowArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mOverflowArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mData:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mBackendId:I

    return-void
.end method

.method public setDisplayAsDisabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mToDisplayAsDisabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mToDisplayAsDisabled:Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->invalidate()V

    goto :goto_0
.end method

.method public setItemOwned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mIsItemOwned:Z

    return-void
.end method

.method public setLoggingData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mLoggingData:Ljava/lang/Object;

    return-void
.end method

.method public setThumbnailAspectRatio(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnailAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mThumbnailAspectRatio:F

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldShowInlineCreatorBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mShowInlineCreatorBadge:Z

    return v0
.end method

.method public supportsSubtitleAndRating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayCardViewBase;->mSupportsSubtitleAndRating:Z

    return v0
.end method
