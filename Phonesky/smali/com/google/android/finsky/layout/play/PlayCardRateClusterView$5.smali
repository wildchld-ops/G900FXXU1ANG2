.class Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;
.super Ljava/lang/Object;
.source "PlayCardRateClusterView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->transitionToEmptyState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    # getter for: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$400(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;)Lcom/google/android/finsky/adapters/OnCollapsedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    # getter for: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$400(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;)Lcom/google/android/finsky/adapters/OnCollapsedListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PlayUtils;->removeClusterFromStream(Lcom/google/android/finsky/layout/play/PlayCardClusterView;Lcom/google/android/finsky/adapters/OnCollapsedListener;)V

    :cond_0
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
