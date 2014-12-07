.class public Lcom/android/launcher2/DeleteDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DeleteDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    }
.end annotation


# instance fields
.field private final kLidUpHeight:I

.field private mAngleDirection:F

.field private mBounds:Landroid/graphics/Rect;

.field private mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

.field private mBulgeFrameNumber:I

.field private mBulgeFrames:[Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimatingBulge:Z

.field private mIsAnimatingShake:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mPreviousLidShakeValue:F

.field private mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTrashBinOnly:Landroid/graphics/drawable/Drawable;

.field private mTrashCan:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Landroid/graphics/drawable/Drawable;
    .param p5    # Z
    .param p6    # Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->kLidUpHeight:I

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f0200f8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f0200fb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_0
    iput-object p6, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->initAnimations()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f02010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f02010b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f02010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f02010e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    .locals 1
    .param p0    # Lcom/android/launcher2/DeleteDrawable;

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    return-object v0
.end method

.method private drawShakeAnimation(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;

    const v5, 0x3f99999a

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v9, v8

    const v10, 0x3f99999a

    mul-float/2addr v9, v10

    float-to-int v7, v9

    int-to-float v9, v2

    const v10, 0x3f99999a

    mul-float/2addr v9, v10

    float-to-int v6, v9

    sub-int v0, v7, v8

    sub-int v1, v6, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v9, v0

    int-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L

    div-double/2addr v9, v11

    double-to-float v9, v9

    neg-int v10, v1

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const v9, 0x3f99999a

    const v10, 0x3f99999a

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v3, v9, 0x2

    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v9, 0x5

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    int-to-float v10, v3

    iget v11, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initAnimations()V
    .locals 7

    const-wide/16 v5, 0x3c

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f05001f

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f05001e

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f05001d

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startAnimator(IJ)V
    .locals 2
    .param p1    # I
    .param p2    # J

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    const v1, 0x7f05001c

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/android/launcher2/DeleteDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DeleteDrawable$1;-><init>(Lcom/android/launcher2/DeleteDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private startBulgeAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    const v0, 0x7f05001c

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/DeleteDrawable;->startAnimator(IJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    :cond_1
    return-void
.end method

.method private startShakeAnimation()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method private stopCurrentAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDrawable;->drawShakeAnimation(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8
    .param p1    # [I

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    aget v6, p1, v2

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    aget v6, p1, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    const/4 v1, 0x1

    :cond_1
    aget v6, p1, v2

    const v7, 0x10102fe

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v3, v4

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startBulgeAnimation()V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v4

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    goto :goto_3

    :cond_8
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 4
    .param p1    # F

    const/high16 v3, 0x3f800000

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v0, v3, v1

    div-float v1, p1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 3
    .param p1    # F

    const/high16 v2, 0x3f800000

    const/high16 v0, 0x40800000

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 8
    .param p1    # F

    const/high16 v7, -0x3ec00000

    const/high16 v6, -0x40800000

    const/high16 v5, 0x41400000

    const/high16 v2, 0x41000000

    const/high16 v4, 0x41000000

    mul-float/2addr p1, v4

    const/high16 v3, 0x41400000

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    sub-float v4, v0, v5

    sub-float v0, v5, v4

    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_1
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    add-float v4, v0, v5

    sub-float v0, v7, v4

    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 2
    .param p1    # F

    const/high16 v1, 0x3f800000

    const/high16 v0, 0x40800000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    :cond_0
    return-void
.end method
