.class public Lcom/google/android/play/layout/PlayTabStrip;
.super Landroid/widget/LinearLayout;
.source "PlayTabStrip.java"


# instance fields
.field private final mFullUnderlinePaint:Landroid/graphics/Paint;

.field private final mFullUnderlineThickness:I

.field private mIndexForSelection:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private final mSelectedUnderlineThickness:I

.field private mSelectionOffset:F

.field private final mSideSeparatorHeight:I

.field private final mSideSeparatorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/play/layout/PlayTabStrip;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/play/R$dimen;->play_tab_strip_full_underline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mFullUnderlineThickness:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mFullUnderlinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mFullUnderlinePaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/play/R$color;->play_tab_strip_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/google/android/play/R$dimen;->play_tab_strip_selected_underline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectedUnderlineThickness:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/play/R$color;->play_tab_strip_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/play/R$dimen;->hairline_separator_thickness:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v1, Lcom/google/android/play/R$dimen;->play_tab_strip_vertical_separator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTabStrip;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTabStrip;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mIndexForSelection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mIndexForSelection:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTabStrip;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mIndexForSelection:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    int-to-float v2, v13

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    sub-float/2addr v2, v3

    move/from16 v0, v16

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    int-to-float v2, v14

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    sub-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v17, v0

    :cond_0
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectedUnderlineThickness:I

    sub-int v1, v11, v1

    int-to-float v3, v1

    move/from16 v0, v17

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mFullUnderlineThickness:I

    sub-int v1, v11, v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTabStrip;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/play/layout/PlayTabStrip;->mFullUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v12, 0x1

    :goto_0
    if-ge v12, v8, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/play/layout/PlayTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v10

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int v19, v1, v10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v20, v19, v1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorHeight:I

    add-int v1, v1, v20

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/play/layout/PlayTabStrip;->mSideSeparatorPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onPageScrolled(IFI)V
    .locals 0
    .param p1    # I
    .param p2    # F
    .param p3    # I

    iput p1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mIndexForSelection:I

    iput p2, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTabStrip;->invalidate()V

    return-void
.end method

.method onPageSelected(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/google/android/play/layout/PlayTabStrip;->mIndexForSelection:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectionOffset:F

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTabStrip;->invalidate()V

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTabStrip;->invalidate()V

    return-void
.end method
