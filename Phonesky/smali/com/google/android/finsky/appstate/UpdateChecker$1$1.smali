.class Lcom/google/android/finsky/appstate/UpdateChecker$1$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker$1;->onPostExecute(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 6

    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    invoke-static {v3}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->getDocuments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->updateGmsCore(Lcom/google/android/finsky/api/model/Document;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v4, v4, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$300(Lcom/google/android/finsky/appstate/UpdateChecker;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$logReason:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/appstate/UpdateChecker;->handleUpdates(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    invoke-static {v3, v4, v1, v5}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$400(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;->this$1:Lcom/google/android/finsky/appstate/UpdateChecker$1;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
