.class Lcom/google/android/finsky/widget/TrampolineActivity$1;
.super Ljava/lang/Object;
.source "TrampolineActivity.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/TrampolineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/TrampolineActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    iput p2, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    # invokes: Lcom/google/android/finsky/widget/TrampolineActivity;->showNetworkNecessaryDialog()V
    invoke-static {v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->access$100(Lcom/google/android/finsky/widget/TrampolineActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    iget-object v0, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 3

    new-instance v0, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v1, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    iget v2, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->val$appWidgetId:I

    # invokes: Lcom/google/android/finsky/widget/TrampolineActivity;->initialize(Lcom/google/android/finsky/api/model/DfeToc;I)V
    invoke-static {v1, v0, v2}, Lcom/google/android/finsky/widget/TrampolineActivity;->access$000(Lcom/google/android/finsky/widget/TrampolineActivity;Lcom/google/android/finsky/api/model/DfeToc;I)V

    return-void
.end method
