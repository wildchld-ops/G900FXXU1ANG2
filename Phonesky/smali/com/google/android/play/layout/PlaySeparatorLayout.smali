.class public Lcom/google/android/play/layout/PlaySeparatorLayout;
.super Landroid/widget/RelativeLayout;
.source "PlaySeparatorLayout.java"


# instance fields
.field private final mHalfSeparatorThickness:I

.field private final mSeparatorPaddingBottom:I

.field private final mSeparatorPaddingLeft:I

.field private final mSeparatorPaddingRight:I

.field private final mSeparatorPaddingTop:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSeparatorThickness:I

.field private mSeparatorVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/play/layout/PlaySeparatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/layout/PlaySeparatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v4}, Lcom/google/android/play/layout/PlaySeparatorLayout;->setWillNotDraw(Z)V

    iput-boolean v4, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorVisible:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/play/R$dimen;->hairline_separator_thickness:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorThickness:I

    iget v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorThickness:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mHalfSeparatorThickness:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    sget v3, Lcom/google/android/play/R$color;->play_reason_separator:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorThickness:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Lcom/google/android/play/R$styleable;->PlaySeparatorLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingTop:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingBottom:I

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingLeft:I

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingRight:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingTop:I

    iget v1, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mHalfSeparatorThickness:I

    add-int v6, v0, v1

    iget v0, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingLeft:I

    int-to-float v1, v0

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlaySeparatorLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingRight:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setSeparatorVisible(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorVisible:Z

    if-ne v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorVisible:Z

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingTop:I

    iget v3, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/play/layout/PlaySeparatorLayout;->mSeparatorThickness:I

    add-int v0, v2, v3

    :goto_1
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/google/android/play/layout/PlaySeparatorLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlaySeparatorLayout;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
