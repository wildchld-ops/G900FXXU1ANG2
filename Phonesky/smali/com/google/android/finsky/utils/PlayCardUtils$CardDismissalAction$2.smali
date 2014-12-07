.class Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$2;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->onActionSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$2;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    const-string v0, "Volley error while dismissing %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$2;->this$0:Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    # getter for: Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v3}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->access$200(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
