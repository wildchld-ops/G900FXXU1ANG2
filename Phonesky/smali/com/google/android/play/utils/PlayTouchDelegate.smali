.class public Lcom/google/android/play/utils/PlayTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "PlayTouchDelegate.java"


# instance fields
.field private mPlayBounds:Landroid/graphics/Rect;

.field private mPlayDelegateTargeted:Z

.field private mPlayDelegateView:Landroid/view/View;

.field private mPlaySlop:I

.field private mPlaySlopBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
    .param p2    # Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlopBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlopBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlop:I

    neg-int v1, v1

    iget v2, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iput-object p2, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateView:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_1
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-boolean v11, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateTargeted:Z

    const/4 v4, 0x1

    goto :goto_0

    :pswitch_1
    iget-boolean v4, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateTargeted:Z

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlopBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v11, :cond_0

    iput-boolean v10, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateTargeted:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v4, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateTargeted:Z

    iput-boolean v10, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlayDelegateTargeted:Z

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/google/android/play/utils/PlayTouchDelegate;->mPlaySlop:I

    mul-int/lit8 v9, v5, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    mul-int/lit8 v10, v5, 0x2

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
