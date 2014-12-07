.class Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;
.super Ljava/lang/Object;
.source "PlayCardQuickSuggestionsClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

.field final synthetic val$suggestions:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;->val$suggestions:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    # getter for: Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mContentScroller:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->access$300(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;)Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->scrollAwayRateCard()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;->this$0:Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;->val$suggestions:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView$3;->val$suggestions:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->descriptionHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->replaceTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
