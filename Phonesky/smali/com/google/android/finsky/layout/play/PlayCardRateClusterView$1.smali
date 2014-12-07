.class Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;
.super Ljava/lang/Object;
.source "PlayCardRateClusterView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRate(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mRejectTouchEvents:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$002(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Z)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;->val$rateCard:Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->fadeOutCard(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$100(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    :cond_0
    return-void
.end method

.method public onRateCleared()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mRejectTouchEvents:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->access$002(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Z)Z

    return-void
.end method
