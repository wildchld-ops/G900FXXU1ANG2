.class Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;
.super Ljava/lang/Object;
.source "PlayCardRateClusterView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->fadeOutCard(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->startSlideTransition(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$200(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

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
