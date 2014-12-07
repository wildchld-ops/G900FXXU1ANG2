.class public Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastY:[F

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 11
    .param p1    # F
    .param p2    # F
    .param p3    # J

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v2, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v2, v7, :cond_0

    aget-wide v7, v3, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    :cond_0
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastX:[F

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastY:[F

    if-ltz v1, :cond_3

    add-int/lit8 v6, v1, 0x1

    rsub-int/lit8 v7, v1, 0x4

    add-int/lit8 v0, v7, -0x1

    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    :cond_3
    aput p1, v4, v2

    aput p2, v5, v2

    aput-wide p3, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x4

    if-ge v2, v7, :cond_4

    const-wide/16 v7, 0x0

    aput-wide v7, v3, v2

    :cond_4
    return-void

    :cond_5
    aget-wide v7, v3, v2

    const-wide/16 v9, 0xc8

    sub-long v9, p3, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    move v1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->addPoint(FFJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->addPoint(FFJ)V

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1    # I

    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 19
    .param p1    # I
    .param p2    # F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastX:[F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastY:[F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v15, 0x0

    aget v9, v12, v15

    const/4 v15, 0x0

    aget v10, v13, v15

    const/4 v15, 0x0

    aget-wide v7, v11, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v15, 0x4

    if-ge v1, v15, :cond_0

    aget-wide v15, v11, v1

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    if-ge v6, v1, :cond_5

    aget-wide v15, v11, v6

    sub-long/2addr v15, v7

    long-to-int v5, v15

    if-nez v5, :cond_2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget v15, v12, v6

    sub-float v4, v15, v9

    int-to-float v15, v5

    div-float v15, v4, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v15, v16

    const/4 v15, 0x0

    cmpl-float v15, v2, v15

    if-nez v15, :cond_3

    move v2, v14

    :goto_3
    aget v15, v13, v6

    sub-float v4, v15, v10

    int-to-float v15, v5

    div-float v15, v4, v15

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v15, v16

    const/4 v15, 0x0

    cmpl-float v15, v3, v15

    if-nez v15, :cond_4

    move v3, v14

    goto :goto_2

    :cond_3
    add-float v15, v2, v14

    const/high16 v16, 0x3f000000

    mul-float v2, v15, v16

    goto :goto_3

    :cond_4
    add-float v15, v3, v14

    const/high16 v16, 0x3f000000

    mul-float v3, v15, v16

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    cmpg-float v15, v2, v15

    if-gez v15, :cond_6

    move/from16 v0, p2

    neg-float v15, v0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    :goto_4
    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mXVelocity:F

    const/4 v15, 0x0

    cmpg-float v15, v3, v15

    if-gez v15, :cond_7

    move/from16 v0, p2

    neg-float v15, v0

    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    :goto_5
    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mYVelocity:F

    return-void

    :cond_6
    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    goto :goto_4

    :cond_7
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    goto :goto_5
.end method

.method public getXVelocity()F
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
