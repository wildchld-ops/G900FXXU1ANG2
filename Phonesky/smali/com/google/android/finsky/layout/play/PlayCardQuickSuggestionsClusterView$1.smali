.class Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;
.super Ljava/lang/Object;
.source "PlayCardQuickSuggestionsClusterView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

.field final synthetic val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

.field final synthetic val$rateContentAspectRatio:F


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;F)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    iput p3, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->val$rateContentAspectRatio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1    # Landroid/view/animation/Animation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iget-object v1, v1, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    invoke-virtual {v1, v3, v3, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->bindCardAt(IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->val$rateContentAspectRatio:F

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setThumbnailAspectRatio(F)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V
    invoke-static {v1, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;I)V

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
