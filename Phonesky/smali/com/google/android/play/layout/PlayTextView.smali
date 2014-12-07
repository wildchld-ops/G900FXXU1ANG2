.class public Lcom/google/android/play/layout/PlayTextView;
.super Landroid/widget/TextView;
.source "PlayTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/layout/PlayTextView$SelfishUrlSpan;,
        Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;
    }
.end annotation


# instance fields
.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderThickness:F

.field private final mCompactPercentage:I

.field private mDecorationPosition:I

.field private mDrawBorder:Z

.field private final mExpandable:Z

.field private mIsExpanded:Z

.field private mLastLineFadeOutDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mLastLineFadeOutHintMargin:I

.field private mLastLineFadeOutSize:I

.field private final mLastLineOverdrawHint:Ljava/lang/String;

.field private mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

.field private mLastLineOverdrawPaint:Landroid/graphics/Paint;

.field private final mSupportsHtmlLinks:Z

.field private final mToDrawOverLastLineIfNecessary:Z

.field private mUrlClickHandler:Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;

.field private mUrlSpanClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v8, Lcom/google/android/play/R$styleable;->PlayTextView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/play/layout/PlayTextView;->mToDrawOverLastLineIfNecessary:Z

    iget-boolean v8, p0, Lcom/google/android/play/layout/PlayTextView;->mToDrawOverLastLineIfNecessary:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    sget v9, Lcom/google/android/play/R$color;->white:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget v8, Lcom/google/android/play/R$dimen;->play_text_view_fadeout:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutSize:I

    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0xffffff

    and-int/2addr v12, v4

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget v8, Lcom/google/android/play/R$dimen;->play_text_view_fadeout_hint_margin:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutHintMargin:I

    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHint:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHint:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getCurrentTextColor()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/play/layout/PlayTextView;->mSupportsHtmlLinks:Z

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/play/layout/PlayTextView;->mExpandable:Z

    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/play/layout/PlayTextView;->mDecorationPosition:I

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getTextSize()F

    move-result v6

    sget v8, Lcom/google/android/play/R$bool;->text_compact_mode_enable:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    const v8, 0x3f960419

    mul-float/2addr v8, v6

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    div-float v2, v8, v9

    const/4 v8, 0x0

    const/high16 v9, 0x42c80000

    const/high16 v10, 0x3f800000

    sub-float/2addr v10, v2

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/play/layout/PlayTextView;->mCompactPercentage:I

    :goto_0
    iget v8, p0, Lcom/google/android/play/layout/PlayTextView;->mCompactPercentage:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/google/android/play/layout/PlayTextView;->mCompactPercentage:I

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    const/high16 v9, 0x42c80000

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000

    invoke-virtual {p0, v8, v9}, Lcom/google/android/play/layout/PlayTextView;->setLineSpacing(FF)V

    :cond_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/android/play/R$dimen;->play_text_view_outline:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iput v8, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderThickness:F

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderThickness:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/google/android/play/layout/PlayTextView;->setWillNotDraw(Z)V

    return-void

    :cond_3
    const/4 v8, 0x0

    iput v8, p0, Lcom/google/android/play/layout/PlayTextView;->mCompactPercentage:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/play/layout/PlayTextView;)V
    .locals 0
    .param p0    # Lcom/google/android/play/layout/PlayTextView;

    invoke-direct {p0}, Lcom/google/android/play/layout/PlayTextView;->handleClick()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/play/layout/PlayTextView;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/play/layout/PlayTextView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/play/layout/PlayTextView;->mUrlSpanClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/play/layout/PlayTextView;)Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;
    .locals 1
    .param p0    # Lcom/google/android/play/layout/PlayTextView;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTextView;->mUrlClickHandler:Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;

    return-object v0
.end method

.method private collapseContent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->requestLayout()V

    return-void
.end method

.method private expandContent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mIsExpanded:Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->requestLayout()V

    return-void
.end method

.method private handleClick()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/google/android/play/layout/PlayTextView;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mUrlSpanClicked:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/play/layout/PlayTextView;->mUrlSpanClicked:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mIsExpanded:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/play/layout/PlayTextView;->collapseContent()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/play/layout/PlayTextView;->expandContent()V

    goto :goto_0
.end method

.method private selfishifyUrlSpans(Ljava/lang/CharSequence;)V
    .locals 11
    .param p1    # Ljava/lang/CharSequence;

    const/4 v10, 0x0

    instance-of v8, p1, Landroid/text/Spannable;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v5, p1

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v10, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v5, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/play/layout/PlayTextView$SelfishUrlSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/google/android/play/layout/PlayTextView$SelfishUrlSpan;-><init>(Lcom/google/android/play/layout/PlayTextView;Ljava/lang/String;)V

    invoke-interface {v5, v8, v7, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1    # Landroid/graphics/Canvas;

    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/play/layout/PlayTextView;->mDrawBorder:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/play/layout/PlayTextView;->mBorderThickness:F

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v14, v2

    int-to-float v3, v14

    int-to-float v4, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v14

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v14

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/play/layout/PlayTextView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/play/layout/PlayTextView;->mToDrawOverLastLineIfNecessary:Z

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    if-eqz v15, :cond_1

    const/16 v21, -0x1

    const/16 v19, -0x1

    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v15}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    if-ge v9, v11, :cond_5

    if-le v8, v11, :cond_5

    const/4 v3, 0x0

    int-to-float v4, v9

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-lez v16, :cond_1

    add-int/lit8 v2, v16, -0x1

    invoke-virtual {v15, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayTextView;->getPaddingRight()I

    move-result v18

    add-int v10, v17, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHint:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v13, v2

    sub-int v2, v22, v18

    sub-int v12, v2, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutHintMargin:I

    sub-int v2, v12, v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutHintMargin:I

    sub-int v10, v12, v2

    int-to-float v3, v10

    move/from16 v0, v21

    int-to-float v4, v0

    sub-int v2, v22, v18

    int-to-float v5, v2

    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHint:Ljava/lang/String;

    int-to-float v3, v12

    add-int/lit8 v4, v16, -0x1

    invoke-virtual {v15, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineOverdrawHintPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutSize:I

    sub-int v3, v10, v3

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v2, v3, v0, v10, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/play/layout/PlayTextView;->mLastLineFadeOutDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_5
    move/from16 v21, v9

    move/from16 v19, v8

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget v0, p0, Lcom/google/android/play/layout/PlayTextView;->mCompactPercentage:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/play/layout/PlayTextView;->mCompactPercentage:I

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/play/layout/PlayTextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setContent(Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;
    .param p2    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/play/layout/PlayTextView;->mUrlClickHandler:Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;

    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mSupportsHtmlLinks:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/play/layout/PlayTextView;->selfishifyUrlSpans(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mExpandable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/layout/PlayTextView;->mIsExpanded:Z

    :cond_1
    new-instance v0, Lcom/google/android/play/layout/PlayTextView$1;

    invoke-direct {v0, p0}, Lcom/google/android/play/layout/PlayTextView$1;-><init>(Lcom/google/android/play/layout/PlayTextView;)V

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Lcom/google/android/play/layout/PlayTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentColorId(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayTextView;->setTextColor(I)V

    iput-boolean p2, p0, Lcom/google/android/play/layout/PlayTextView;->mDrawBorder:Z

    iget-boolean v1, p0, Lcom/google/android/play/layout/PlayTextView;->mDrawBorder:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->invalidate()V

    return-void
.end method

.method public setContentColorStateListId(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iput-boolean p2, p0, Lcom/google/android/play/layout/PlayTextView;->mDrawBorder:Z

    iget-boolean v1, p0, Lcom/google/android/play/layout/PlayTextView;->mDrawBorder:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/layout/PlayTextView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->invalidate()V

    return-void
.end method

.method public setDecorationBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/google/android/play/layout/PlayTextView;->mDecorationPosition:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/google/android/play/layout/PlayTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/google/android/play/layout/PlayTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not call this method directly"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
