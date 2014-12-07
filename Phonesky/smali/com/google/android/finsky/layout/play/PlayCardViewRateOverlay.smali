.class public Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;
.super Landroid/view/View;
.source "PlayCardViewRateOverlay.java"


# instance fields
.field private final mRatingLabelPaint:Landroid/text/TextPaint;

.field private final mRatingLabelRect:Landroid/graphics/Rect;

.field private mRatingLabelText:Ljava/lang/String;

.field private final mRatingStarsPaint:Landroid/text/TextPaint;

.field private final mRatingStarsRect:Landroid/graphics/Rect;

.field private mRatingStarsText:Ljava/lang/String;

.field private final mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    const v2, 0x7f0b00ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    const-string v2, "sans-serif-light"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    const v2, 0x7f0b00bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    const-string v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelRect:Landroid/graphics/Rect;

    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mTopMargin:I

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public configure(II)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getHeight()I

    move-result v0

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int v4, v2, v7

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mTopMargin:I

    add-int/2addr v7, v8

    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int v5, v7, v2

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v3, v7, v8

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsText:Ljava/lang/String;

    int-to-float v8, v3

    int-to-float v9, v5

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingStarsPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v1, v7, v8

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelText:Ljava/lang/String;

    int-to-float v8, v1

    int-to-float v9, v5

    iget-object v10, p0, Lcom/google/android/finsky/layout/play/PlayCardViewRateOverlay;->mRatingLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
