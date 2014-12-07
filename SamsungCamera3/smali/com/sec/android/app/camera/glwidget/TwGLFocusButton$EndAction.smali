.class Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;
.super Ljava/lang/Object;
.source "TwGLFocusButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->PAF_CONTROL_END_DURATION:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$700()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton$EndAction;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->mDegrees:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;)F

    move-result v3

    const/4 v4, 0x0

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    const/4 v6, 0x0

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->startAnimation(JFFLandroid/view/animation/Interpolator;Z)V
    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;JFFLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
