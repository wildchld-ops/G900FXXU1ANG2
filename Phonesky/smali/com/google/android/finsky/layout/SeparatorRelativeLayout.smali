.class public Lcom/google/android/finsky/layout/SeparatorRelativeLayout;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "SeparatorRelativeLayout.java"


# instance fields
.field private final mHalfSeparatorThickness:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->mHalfSeparatorThickness:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    const v3, 0x7f07000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->mHalfSeparatorThickness:I

    sub-int v6, v0, v1

    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
