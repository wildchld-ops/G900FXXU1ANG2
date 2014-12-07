.class Lcom/google/android/finsky/appstate/UpdateChecker$1;
.super Landroid/os/AsyncTask;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

.field final synthetic val$currentAccount:Landroid/accounts/Account;

.field final synthetic val$errorRunnable:Ljava/lang/Runnable;

.field final synthetic val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

.field final synthetic val$logReason:Ljava/lang/String;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/GmsCoreHelper;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$currentAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$logReason:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$successRunnable:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 4
    .param p1    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v1}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$100(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {v2}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$000(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/appstate/AppStates;->getOwnedByAccountBlocking(Lcom/google/android/finsky/library/Libraries;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->insertGmsCore(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->val$currentAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->selectAccountsForUpdateChecks(Lcom/google/android/finsky/appstate/InstallerDataStore;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    new-instance v3, Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$100(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {v5}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$000(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;-><init>(Lcom/google/android/finsky/appstate/InstallerDataStore;Lcom/google/android/finsky/library/Libraries;)V

    # setter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    invoke-static {v2, v3}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$202(Lcom/google/android/finsky/appstate/UpdateChecker;Lcom/google/android/finsky/api/model/MultiWayUpdateController;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    invoke-static {v2}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/appstate/UpdateChecker$1$1;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    invoke-static {v2}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/appstate/UpdateChecker$1$2;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker$1;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker$1;->this$0:Lcom/google/android/finsky/appstate/UpdateChecker;

    # getter for: Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    invoke-static {v2}, Lcom/google/android/finsky/appstate/UpdateChecker;->access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addRequests(Ljava/util/Map;)V

    return-void
.end method
