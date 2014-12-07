.class Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;
.super Ljava/lang/Object;
.source "PlayCardQuickSuggestionsClusterView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRate(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncIndexOfItemToRate(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->access$100(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->syncState(Z)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->access$200(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    const/4 v1, 0x1

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;I)V

    goto :goto_0
.end method

.method public onRateCleared()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$2;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->setState(I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;I)V

    return-void
.end method
