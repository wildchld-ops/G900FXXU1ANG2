.class public abstract Lcom/google/android/finsky/layout/AbsHorizontalStrip;
.super Landroid/view/ViewGroup;
.source "AbsHorizontalStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDeceleration:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field protected mLayoutMargin:I

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field protected mOriginalPixelOffsetOfFirstChild:F

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollAnimation:Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;

.field private final mScrollThreshold:I

.field protected mTotalChildrenWidth:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mXDistanceScrolledSinceLastDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    iput-object p1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mScrollThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000

    mul-float v0, v1, v2

    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AbsHorizontalStrip;F)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/AbsHorizontalStrip;
    .param p1    # F

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->updateScrollPosition(F)V

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onTouchEventDone(FFZ)V
    .locals 20
    .param p1    # F
    .param p2    # F
    .param p3    # Z

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v2, v17

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    div-float v9, v2, v17

    mul-float v17, v2, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v18, v0

    mul-float v18, v18, v9

    mul-float v18, v18, v9

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    sub-float v16, v17, v18

    const/16 v17, 0x0

    cmpg-float v17, p2, v17

    if-gez v17, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v18

    if-eqz v11, :cond_4

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    :goto_1
    add-float v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v14

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v17

    sub-float v17, v15, v17

    add-float v16, v16, v17

    const/high16 v17, 0x40000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    mul-float v17, v17, v16

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v17

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 p2, v0

    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    div-float v9, v2, v17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->runScrollAnimation(FF)V

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v13

    if-nez v12, :cond_1

    if-eqz v13, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->invalidate()V

    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    :goto_4
    return-void

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    move/from16 v17, v16

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v17

    sub-float v17, v17, v15

    add-float v16, v16, v17

    const/high16 v17, 0x40000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    mul-float v17, v17, v16

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p2

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mScrollThreshold:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_7

    if-nez p3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v18

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v5

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v6, v4, v17

    int-to-float v0, v6

    move/from16 v17, v0

    cmpl-float v17, v17, v5

    if-ltz v17, :cond_a

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v7, v5, v17

    int-to-float v0, v6

    move/from16 v17, v0

    sub-float v8, v17, v5

    cmpl-float v17, v8, v7

    if-lez v17, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v15

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v17

    sub-float v16, v5, v17

    :cond_8
    const/high16 v17, 0x40000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    mul-float v17, v17, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    move/from16 v17, v0

    div-float v9, v2, v17

    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_b

    neg-float v0, v2

    move/from16 v17, v0

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->runScrollAnimation(FF)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v15

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLayoutMargin:I

    move/from16 v17, v0

    add-int v4, v6, v17

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    move/from16 v17, v2

    goto :goto_7
.end method

.method private onTouchEventDown(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLastMotionX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    return-void
.end method

.method private onTouchEventMove(FF)V
    .locals 7
    .param p1    # F
    .param p2    # F

    const/4 v6, 0x0

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLastMotionX:F

    sub-float v2, v4, p1

    iput p1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v4

    sub-float/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->updateScrollPosition(F)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    cmpg-float v4, v2, v6

    if-gez v4, :cond_3

    neg-float v1, v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v3

    div-float v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->invalidate()V

    :cond_2
    return-void

    :cond_3
    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move v1, v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v5, v3

    div-float v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private startInterceptingEvents()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private updateScrollPosition(F)V
    .locals 2
    .param p1    # F

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->limitScrollPosition(F)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->invalidate()V

    return-void
.end method


# virtual methods
.method protected clampToTotalStripWidth(F)F
    .locals 3
    .param p1    # F

    const/4 v2, 0x0

    iget v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    :goto_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr p1, v1

    goto :goto_1

    :cond_1
    :goto_2
    iget v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr p1, v1

    goto :goto_2

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method protected createScrollAnimation(FJ)Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;
    .locals 1
    .param p1    # F
    .param p2    # J

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    new-instance v0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;-><init>(Lcom/google/android/finsky/layout/AbsHorizontalStrip;FJ)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    const/high16 v3, 0x43870000

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    float-to-int v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    const/high16 v3, 0x42b40000

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    neg-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    float-to-int v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->invalidate()V

    :cond_2
    return-void
.end method

.method abstract getLeftEdgeOfChild(I)F
.end method

.method abstract getLeftEdgeOfChildOnLeft(F)F
.end method

.method abstract getLeftEdgeOfChildOnRight(F)F
.end method

.method protected getScrollPosition()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method protected limitScrollPosition(F)F
    .locals 3
    .param p1    # F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    neg-float v1, p1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    neg-int v1, v0

    int-to-float p1, v1

    :cond_1
    return p1
.end method

.method protected onChildAcquiredFocus(I)V
    .locals 6
    .param p1    # I

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getLeftEdgeOfChild(I)F

    move-result v1

    neg-float v4, v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->getScrollPosition()F

    move-result v5

    sub-float v3, v4, v5

    const/high16 v4, 0x40000000

    iget v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iget v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    div-float v2, v0, v4

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    neg-float v0, v0

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->runScrollAnimation(FF)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->initOrResetVelocityTracker()V

    iget-object v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->onTouchEventDown(FF)V

    goto :goto_1

    :pswitch_2
    iget v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLastMotionX:F

    sub-float v1, v5, v2

    iput v2, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLastMotionX:F

    iget v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    iget v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    iget v6, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mScrollThreshold:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->initVelocityTrackerIfNotExists()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->startInterceptingEvents()V

    iput-boolean v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mIsBeingDragged:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->initVelocityTrackerIfNotExists()V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return v4

    :pswitch_0
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->onTouchEventMove(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    const v6, 0x449c4000

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, v1, v5, v3}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->onTouchEventDone(FFZ)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->recycleVelocityTracker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected runScrollAnimation(FF)V
    .locals 2
    .param p1    # F
    .param p2    # F

    const/high16 v0, 0x447a0000

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->createScrollAnimation(FJ)Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mScrollAnimation:Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mScrollAnimation:Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->start()V

    return-void
.end method

.method public setLayoutMargin(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mLayoutMargin:I

    return-void
.end method
