.class public Lcom/samsung/contacts/widget/StrokeTextView;
.super Landroid/widget/TextView;
.source "StrokeTextView.java"


# instance fields
.field private frozen:Z

.field private lockedCompoundPadding:[I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUseStroke:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/widget/StrokeTextView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public freeze()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/StrokeTextView;->getCompoundPaddingLeft()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/StrokeTextView;->getCompoundPaddingRight()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/StrokeTextView;->getCompoundPaddingTop()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/StrokeTextView;->getCompoundPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->lockedCompoundPadding:[I

    iput-boolean v3, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    return-void
.end method

.method public getCompoundPaddingBottom()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingTop()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x1

    sget-object v1, Lcom/android/contacts/R$styleable;->stroke:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mUseStroke:Z

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mStrokeColor:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mStrokeWidth:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/StrokeTextView;->freeze()V

    iget-boolean v1, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mUseStroke:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mStrokeColor:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/widget/StrokeTextView;->unfreeze()V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setUseStroke(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/widget/StrokeTextView;->mUseStroke:Z

    return-void
.end method

.method public unfreeze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/widget/StrokeTextView;->frozen:Z

    return-void
.end method
