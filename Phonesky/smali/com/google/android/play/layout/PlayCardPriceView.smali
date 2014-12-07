.class public Lcom/google/android/play/layout/PlayCardPriceView;
.super Landroid/view/View;
.source "PlayCardPriceView.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconGap:I

.field private mStrikeText:Ljava/lang/String;

.field private final mStrikeTextPaint:Landroid/text/TextPaint;

.field private mStrikeTextWidth:I

.field private mText:Ljava/lang/String;

.field private final mTextBaseline:I

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mTextSize:I

.field private final mTextsGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayCardPriceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/play/R$dimen;->play_card_price_icon_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIconGap:I

    sget v2, Lcom/google/android/play/R$dimen;->play_card_price_texts_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextsGap:I

    sget v2, Lcom/google/android/play/R$dimen;->play_price_label_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextSize:I

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    sget v3, Lcom/google/android/play/R$color;->play_fg_secondary:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextHeight:I

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextBaseline:I

    invoke-virtual {p0, v4}, Lcom/google/android/play/layout/PlayCardPriceView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public clearIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->invalidate()V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->requestLayout()V

    return-void
.end method

.method public getBaseline()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextBaseline:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    int-to-float v4, v2

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIconGap:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeText:Ljava/lang/String;

    int-to-float v5, v2

    iget v6, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextBaseline:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextWidth:I

    iget v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextsGap:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mText:Ljava/lang/String;

    int-to-float v5, v2

    iget v6, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextBaseline:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/high16 v8, 0x40000000

    if-ne v7, v8, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    :goto_0
    const/4 v4, 0x0

    iput v6, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextWidth:I

    iget-object v7, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v1, v5

    :goto_1
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIconGap:I

    add-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextWidth:I

    iget v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeTextWidth:I

    add-int/2addr v4, v5

    if-eqz v1, :cond_1

    iget v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextsGap:I

    add-int/2addr v4, v5

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v3, v5

    add-int/2addr v4, v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    :cond_3
    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    iget v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextHeight:I

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-virtual {p0, v4, v2}, Lcom/google/android/play/layout/PlayCardPriceView;->setMeasuredDimension(II)V

    return-void

    :cond_4
    move v0, v6

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextHeight:I

    iget-object v6, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2
.end method

.method public setIcon(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->invalidate()V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->requestLayout()V

    return-void
.end method

.method public setText(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mText:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mStrikeText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardPriceView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/android/play/utils/PlayCorpusUtils;->getPrimaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->invalidate()V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardPriceView;->requestLayout()V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
