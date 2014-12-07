.class public Lcom/google/android/finsky/layout/IconButtonGroup;
.super Landroid/view/ViewGroup;
.source "IconButtonGroup.java"


# instance fields
.field private mAccessibilityOverlay:Landroid/view/View;

.field private mAllowIcon:Z

.field private mContinueButtonIcon:Landroid/widget/ImageView;

.field private mContinueButtonLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAllowIcon:Z

    return-void
.end method

.method private updateIconVisibility()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAllowIcon:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    const/high16 v7, 0x40000000

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/finsky/layout/IconButtonGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAllowIcon(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAllowIcon:Z

    invoke-direct {p0}, Lcom/google/android/finsky/layout/IconButtonGroup;->updateIconVisibility()V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x7f

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/IconButtonGroup;->updateIconVisibility()V

    return-void
.end method

.method public setLabelBackgroundColor(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method

.method public setLabelBackgroundResource(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mAccessibilityOverlay:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/layout/IconButtonGroup;->mContinueButtonLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
