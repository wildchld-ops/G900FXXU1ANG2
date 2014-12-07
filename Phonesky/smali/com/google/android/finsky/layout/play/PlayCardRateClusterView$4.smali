.class Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;
.super Ljava/lang/Object;
.source "PlayCardRateClusterView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->startSlideTransition(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

.field final synthetic val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1    # Landroid/view/animation/Animation;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
