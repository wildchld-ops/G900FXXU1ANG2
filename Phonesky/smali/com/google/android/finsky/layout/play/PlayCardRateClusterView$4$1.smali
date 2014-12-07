.class Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4$1;
.super Ljava/lang/Object;
.source "PlayCardRateClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4$1;->this$1:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4$1;->this$1:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4$1;->this$1:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->onSlideTransitionCompleted(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$300(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    return-void
.end method
