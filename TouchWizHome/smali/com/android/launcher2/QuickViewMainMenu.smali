.class public Lcom/android/launcher2/QuickViewMainMenu;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewMainMenu$1;,
        Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_DOWN:I = 0x1

.field static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_UP:I = 0x0

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "QuickViewMainMenu"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mChildTop:I

.field private mIsReadOnly:Z

.field private mIsSaved:Z

.field private mLastScroll:J

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNumCols:I

.field private mReadOnlyToastResId:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

.field mScrollState:I

.field private mScrollTop:I

.field mScroller:Landroid/widget/Scroller;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    new-instance v2, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v2, p0, v4}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewMainMenu;Lcom/android/launcher2/QuickViewMainMenu$1;)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->QuickViewMainMenu:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mNumCols:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1, v4, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickViewMainMenu;

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickViewMainMenu;

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickViewMainMenu;

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickViewMainMenu;

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickViewMainMenu;

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method private static calculateChildLeft(IIIIII)I
    .locals 10
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    if-gtz p1, :cond_0

    :goto_0
    return p4

    :cond_0
    move v6, p0

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    div-int/lit8 v0, p3, 0x2

    sub-int/2addr v6, v0

    sub-int/2addr v6, p2

    div-int/lit8 v9, p1, 0x2

    :goto_1
    add-int/2addr v6, p5

    add-int v7, p2, p3

    const/4 v8, 0x1

    :goto_2
    if-ge v8, v9, :cond_2

    sub-int/2addr v6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr v6, v0

    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v9, v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v6, v0, :cond_3

    add-int/lit8 v1, p1, -0x1

    move v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/QuickViewMainMenu;->calculateChildLeft(IIIIII)I

    move-result p4

    goto :goto_0

    :cond_3
    move p4, v6

    goto :goto_0
.end method

.method private drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V
    .locals 26
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/view/View;
    .param p3    # Z
    .param p4    # F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v8, v9, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    if-gt v0, v8, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v7, v23, v24

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v6, v23, v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v20, v23, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v21, v23, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_3

    const v14, 0x3f933333

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0015

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v22, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v23

    if-eqz v23, :cond_4

    sub-float v23, v20, v22

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v7

    move/from16 v23, v0

    neg-float v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    :cond_2
    move/from16 v5, p4

    :goto_3
    const/16 v23, 0x0

    const/high16 v24, 0x3f800000

    move/from16 v0, v24

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/high16 v24, 0x437f0000

    mul-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v23, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-interface/range {v23 .. v24}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v12

    move/from16 v24, v0

    div-float v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    div-float v16, v23, v24

    cmpl-float v23, v16, v15

    if-lez v23, :cond_7

    move v13, v15

    :goto_5
    mul-float/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    add-float v23, v23, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    add-float v24, v24, v21

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    neg-int v0, v11

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000

    div-float v24, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_3
    const/high16 v14, 0x3f800000

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    :cond_5
    const/high16 v23, 0x3f800000

    sub-float v5, v23, p4

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0xff

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_4

    :cond_7
    move/from16 v13, v16

    goto/16 :goto_5
.end method

.method private fling(I)V
    .locals 9
    .param p1    # I

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private savemenupage()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    :cond_0
    return-void
.end method

.method private scroll(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x0

    if-gez p2, :cond_3

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    if-lez p2, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    if-lez v0, :cond_5

    if-le v0, p2, :cond_4

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public static zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V
    .locals 4
    .param p0    # Landroid/view/ViewGroup;
    .param p1    # I
    .param p2    # I

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu;->savemenupage()V

    return-void
.end method

.method public computeScroll()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v2

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_2

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/view/View;->mScrollY:I

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iput v6, p0, Landroid/view/View;->mScrollX:I

    iput v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p0, Landroid/view/View;->mScrollX:I

    if-ne v3, v8, :cond_3

    iget v8, p0, Landroid/view/View;->mScrollY:I

    if-eq v4, v8, :cond_4

    :cond_3
    iget v8, p0, Landroid/view/View;->mScrollX:I

    iget v9, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    :cond_4
    iget v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    iget v8, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v8, v4

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v8, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v8, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v8, :pswitch_data_1

    :pswitch_1
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    const/4 v8, 0x2

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickView;->setOpenStartRect(I)V

    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ne v5, v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    const/4 v8, 0x4

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    iget v8, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iput v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickView;->setCloseEndRect(I)V

    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    sub-long v2, v8, v10

    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_b

    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    const/16 v8, 0x8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    :goto_6
    const/high16 v6, 0x3f800000

    :goto_7
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v11, v6}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v8, :cond_c

    const-string v8, "QuickViewMainMenu"

    const-string v9, "Failed to get current rectangles from animation engine"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_9

    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    :cond_9
    const-string v8, "QuickViewMainMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ElapsedTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->referenceTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x7

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    goto :goto_6

    :cond_b
    long-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-float v9, v9

    div-float v6, v8, v9

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v1, :cond_f

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ne v5, v8, :cond_e

    :cond_d
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v5

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v9, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/QuickView;->isAvailableRect(Landroid/graphics/Rect;I)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v8, v6}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    goto :goto_a

    :cond_f
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ltz v8, :cond_8

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ge v8, v1, :cond_8

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v11, v11, v12

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v8, v6}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected getYOffset()I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 12
    .param p1    # Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/Scroller;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v10}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v6

    if-eqz v6, :cond_0

    const v4, 0x7f0e0069

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v4, 0x7f0e0068

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 10

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int v5, v3, v0

    if-lez v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gez v5, :cond_1

    move v1, v5

    :goto_1
    if-gez v1, :cond_1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v6, v0, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v7, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v7, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v7, v6, v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    :goto_1
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_0

    :sswitch_0
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    const/4 v10, 0x0

    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float v10, v6, v10

    float-to-int v1, v10

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float v10, v4, v10

    float-to-int v0, v10

    mul-int v10, v1, v1

    mul-int v11, v0, v0

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iget v11, p0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    sub-int v2, v10, v11

    const/16 v10, 0x32

    if-le v2, v10, :cond_1

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    iput v10, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    :cond_3
    iget v10, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v10, v6

    float-to-int v8, v10

    iget v3, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v3, :cond_5

    const/4 v9, 0x1

    :goto_2
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_4

    if-eqz v9, :cond_4

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v10, 0x0

    invoke-direct {p0, v10, v8}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(II)V

    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    iput v6, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_1
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    iput v6, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    iget-object v10, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :sswitch_2
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_7
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    goto/16 :goto_1

    :sswitch_3
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v10, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v10

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v11

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    sub-float v10, v6, v7

    float-to-int v1, v10

    sub-float v10, v4, v5

    float-to-int v0, v10

    mul-int v10, v1, v1

    mul-int v11, v0, v0

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchPointDistance:I

    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->isChangingOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    const/16 v22, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickView;->updateParamsIfNeeded(Z)V

    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v17

    div-int/lit8 v1, v19, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickViewMainMenu;->mNumCols:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v6, v6, v24

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/QuickViewMainMenu;->calculateChildLeft(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    move/from16 v18, v0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v1, 0x1

    if-ge v12, v1, :cond_2

    :goto_1
    return-void

    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-eq v1, v12, :cond_4

    :cond_3
    new-array v1, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v1, v1

    if-eq v1, v12, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v1, :cond_6

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v1, v1

    if-ge v15, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_6
    new-array v1, v12, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v2, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v2, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v20, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v12, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    add-int v1, v9, v11

    move/from16 v0, v19

    if-le v1, v0, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    add-int/2addr v1, v8

    add-int/2addr v10, v1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v15

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    add-int v2, v9, v11

    add-int v3, v10, v8

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v7, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v22, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v1, v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v15

    invoke-virtual {v1, v7, v2}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    add-int/2addr v1, v11

    sub-int v1, v1, v20

    add-int/2addr v9, v1

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v15

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v15

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v15

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    :cond_d
    sub-int v13, p5, p3

    add-int v1, v10, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int v16, v1, v2

    move/from16 v0, v16

    if-le v0, v13, :cond_e

    sub-int v1, v16, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    :goto_7
    if-nez v18, :cond_f

    const/16 v21, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    int-to-float v1, v1

    mul-float v23, v1, v21

    const/4 v1, 0x0

    move/from16 v0, v23

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    move/from16 v0, v18

    int-to-float v2, v0

    div-float v21, v1, v2

    goto :goto_8
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickView;->startDrag(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/DVFSHelper;->acquire()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->computeScroll()V

    :cond_4
    const/high16 v17, 0x42a00000

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_6

    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_8

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mTouchState:I

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(II)V

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto/16 :goto_1

    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    :cond_a
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickView;->getTouchedIndex(II)I

    move-result v8

    if-eqz v12, :cond_b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x6458

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_b
    const/high16 v17, 0x42a00000

    cmpg-float v17, v15, v17

    if-gez v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    if-lez v17, :cond_d

    neg-int v0, v9

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->fling(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mTouchState:I

    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDvfsHelper:Landroid/os/DVFSHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickView;->drop(II)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    return-void
.end method

.method public setReadOnlyToastId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLastScroll:J

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0
.end method

.method protected swapScreen(I)V
    .locals 3
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    iget v0, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->updateTags()V

    goto :goto_0
.end method

.method protected updateTags()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
