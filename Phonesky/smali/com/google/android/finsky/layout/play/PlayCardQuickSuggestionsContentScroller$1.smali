.class Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;
.super Ljava/lang/Object;
.source "PlayCardQuickSuggestionsContentScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    # getter for: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;)Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    # getter for: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;)Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->scrollTo(II)V

    :cond_0
    return-void
.end method
