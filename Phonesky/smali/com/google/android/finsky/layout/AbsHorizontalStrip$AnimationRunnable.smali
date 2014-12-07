.class Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;
.super Ljava/lang/Object;
.source "AbsHorizontalStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AbsHorizontalStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunnable"
.end annotation


# instance fields
.field private mDurationSec:F

.field private mStartTimeNs:J

.field private mVelocity:F

.field final synthetic this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/AbsHorizontalStrip;FJ)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mStartTimeNs:J

    long-to-float v0, p3

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mDurationSec:F

    iput p2, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mVelocity:F

    return-void
.end method

.method private scheduleFrame()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mStartTimeNs:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float v0, v2, v3

    iget v2, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mDurationSec:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget v0, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mDurationSec:F

    :goto_0
    iget v2, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;

    iget v3, v3, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mDeceleration:F

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    iget v2, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->mVelocity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    neg-float v1, v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;

    iget-object v3, p0, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->this$0:Lcom/google/android/finsky/layout/AbsHorizontalStrip;

    iget v3, v3, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    # invokes: Lcom/google/android/finsky/layout/AbsHorizontalStrip;->updateScrollPosition(F)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/AbsHorizontalStrip;->access$000(Lcom/google/android/finsky/layout/AbsHorizontalStrip;F)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->scheduleFrame()V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AbsHorizontalStrip$AnimationRunnable;->scheduleFrame()V

    return-void
.end method
