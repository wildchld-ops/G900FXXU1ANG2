.class public Lcom/google/android/finsky/layout/ButtonBar;
.super Landroid/widget/LinearLayout;
.source "ButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/ButtonBar$ClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTopSeparatorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/ButtonBar$ClickListener;->onPositiveButtonClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/ButtonBar$ClickListener;->onNegativeButtonClick()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ButtonBar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/ButtonBar;->mTopSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    return-void
.end method

.method public setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/layout/ButtonBar;->mClickListener:Lcom/google/android/finsky/layout/ButtonBar$ClickListener;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeButtonTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setNegativeButtonTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setPositiveButtonTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setPositiveButtonVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/ButtonBar;->mPositiveButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
