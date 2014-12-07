.class Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->onActionSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/RateSuggestedContentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/RateSuggestedContentResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    # getter for: Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    invoke-static {v0}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->access$400(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    # getter for: Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->access$200(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    # getter for: Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mCard:Lcom/google/android/play/layout/PlayCardViewBase;
    invoke-static {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->access$300(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardDismissListener;->onDismissDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;->onResponse(Lcom/google/android/finsky/protos/RateSuggestedContentResponse;)V

    return-void
.end method
