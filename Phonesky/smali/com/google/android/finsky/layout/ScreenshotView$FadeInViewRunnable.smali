.class Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;
.super Ljava/lang/Object;
.source "ScreenshotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/ScreenshotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeInViewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ScreenshotView;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/ScreenshotView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;->this$0:Lcom/google/android/finsky/layout/ScreenshotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/ScreenshotView;Lcom/google/android/finsky/layout/ScreenshotView$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/ScreenshotView;
    .param p2    # Lcom/google/android/finsky/layout/ScreenshotView$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;-><init>(Lcom/google/android/finsky/layout/ScreenshotView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;->this$0:Lcom/google/android/finsky/layout/ScreenshotView;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotView;->access$200(Lcom/google/android/finsky/layout/ScreenshotView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;->this$0:Lcom/google/android/finsky/layout/ScreenshotView;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotView;->access$200(Lcom/google/android/finsky/layout/ScreenshotView;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotView$FadeInViewRunnable;->this$0:Lcom/google/android/finsky/layout/ScreenshotView;

    # getter for: Lcom/google/android/finsky/layout/ScreenshotView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ScreenshotView;->access$200(Lcom/google/android/finsky/layout/ScreenshotView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
