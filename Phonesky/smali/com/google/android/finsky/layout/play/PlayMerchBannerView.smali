.class public Lcom/google/android/finsky/layout/play/PlayMerchBannerView;
.super Lcom/google/android/finsky/layout/IdentifiableViewGroup;
.source "PlayMerchBannerView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mColumnCount:I

.field private final mCompactHeight:Z

.field private final mFallbackMerchColor:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mMerchColor:I

.field private mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

.field private mMinTextTrailingSpace:I

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSentImpression:Z

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x199

    invoke-static {v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSentImpression:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mColumnCount:I

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mCompactHeight:Z

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mFallbackMerchColor:I

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->setWillNotDraw(Z)V

    return-void
.end method

.method private clearImageFadingEdge()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->clearFadingEdges()V

    return-void
.end method

.method private configureImageFadingEdge()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->configureFadingEdges(ZZII)V

    return-void
.end method

.method private getFallbackMerchTextColor()I
    .locals 7

    iget v5, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v5, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v5, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    mul-int/lit8 v5, v3, 0x15

    mul-int/lit8 v6, v2, 0x48

    add-int/2addr v5, v6

    mul-int/lit8 v6, v0, 0x7

    add-int v1, v5, v6

    const/16 v5, 0x3200

    if-ge v1, v5, :cond_0

    const v4, 0x7f07004f

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    return v5

    :cond_0
    const v4, 0x7f070050

    goto :goto_0
.end method

.method private getMerchImageOffset(I)I
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mColumnCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    const v1, 0x3fe38e39

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private measureTexts(II)V
    .locals 13

    const/high16 v12, 0x40000000

    const/4 v11, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getMerchImageOffset(I)I

    move-result v2

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mColumnCount:I

    const/4 v9, 0x4

    if-gt v8, v9, :cond_0

    const v4, 0x3f59999a

    :goto_0
    neg-int v8, v2

    int-to-float v9, p2

    const v10, 0x3fe38e39

    mul-float/2addr v9, v10

    mul-float/2addr v9, v4

    float-to-int v9, v9

    add-int v5, v8, v9

    sub-int v7, p1, v5

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v11}, Landroid/widget/TextView;->measure(II)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v8, v9, v11}, Landroid/widget/TextView;->measure(II)V

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-ge v0, v8, :cond_1

    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/high16 v4, 0x3f800000

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    move v1, v7

    :cond_3
    sub-int v8, v7, v1

    iput v8, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMinTextTrailingSpace:I

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwanted children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public configureMerch(Lcom/google/android/finsky/protos/DocumentV2$NextBanner;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;[B)V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mFallbackMerchColor:I

    invoke-static {p3, v0}, Lcom/google/android/finsky/utils/PlayUtils;->getFillColor(Lcom/google/android/finsky/protos/Doc$Image;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchColor:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setOnLoadedListener(Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v0, p3, p2}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->configureImageFadingEdge()V

    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    iget v3, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchColor:I

    invoke-direct {v1, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingBottom()I

    move-result v5

    move v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/finsky/protos/DocumentV2$NextBanner;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/finsky/protos/DocumentV2$NextBanner;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getFallbackMerchTextColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/PlayUtils;->getTextColor(Lcom/google/android/finsky/protos/DocumentV2$NextBanner;I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p4}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v0, p6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p5, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSentImpression:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSentImpression:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->requestLayout()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->clearImageFadingEdge()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v0, v1

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v0, v1

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->invalidate()V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public init(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Merch banner doesn\'t support non-positive number of columns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mColumnCount:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableViewGroup;->onFinishInflate()V

    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FadingEdgeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingBottom()I

    move-result v4

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v11}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getMerchImageOffset(I)I

    move-result v3

    neg-int v11, v3

    add-int v1, v11, v2

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    neg-int v12, v3

    iget-object v13, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v13}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v11, v12, v5, v1, v13}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->layout(IIII)V

    :goto_0
    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int v11, v0, v9

    sub-int/2addr v11, v6

    sub-int/2addr v11, v5

    sub-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x2

    add-int v8, v5, v11

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    sub-int v11, v10, v11

    iget v12, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMinTextTrailingSpace:I

    div-int/lit8 v12, v12, 0x2

    add-int v7, v11, v12

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v7

    add-int v13, v8, v9

    invoke-virtual {v11, v7, v8, v12, v13}, Landroid/widget/TextView;->layout(IIII)V

    add-int/2addr v8, v9

    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v7

    add-int v13, v8, v6

    invoke-virtual {v11, v7, v8, v12, v13}, Landroid/widget/TextView;->layout(IIII)V

    return-void

    :cond_0
    iget-object v11, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v13}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v11, v12, v5, v2, v13}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->layout(IIII)V

    goto :goto_0
.end method

.method public onLoaded(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->configureImageFadingEdge()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mColumnCount:I

    if-gtz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mColumnCount:I

    div-int v3, v0, v6

    move v2, v3

    iget-boolean v6, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mCompactHeight:Z

    if-eqz v6, :cond_2

    mul-int/lit8 v6, v3, 0x2

    div-int/lit8 v1, v6, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->measureTexts(II)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v5, v6, v7

    if-le v5, v1, :cond_1

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->measureTexts(II)V

    :goto_1
    const v6, 0x3fe38e39

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v4, v6

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->measure(II)V

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mMerchImage:Lcom/google/android/finsky/layout/FadingEdgeImageView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->configureImageFadingEdge()V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->measureTexts(II)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->clearImageFadingEdge()V

    goto :goto_2
.end method

.method public resetUiElementNode()V
    .locals 1

    const/16 v0, 0x199

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->mSentImpression:Z

    return-void
.end method
