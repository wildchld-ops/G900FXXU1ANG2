.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;
.super Landroid/os/AsyncTask;
.source "MyAppsInstalledTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V
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
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 3
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

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getOwnedByAccountBlocking(Lcom/google/android/finsky/library/Libraries;Z)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->onPostExecute(Ljava/util/Map;)V

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

    invoke-static {v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->removeGmsCore(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v3, v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v3}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->selectAccountsForUpdateChecks(Lcom/google/android/finsky/appstate/InstallerDataStore;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v2, v2, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDocIdsByAccount:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->onDataChanged()V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    # setter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDocIdsByAccount:Ljava/util/Map;
    invoke-static {v2, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;Ljava/util/Map;)Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->clearState()V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    new-instance v3, Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;-><init>(Lcom/google/android/finsky/appstate/InstallerDataStore;Lcom/google/android/finsky/library/Libraries;)V

    iput-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v2, v2, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v2, v2, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v2, v2, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v2, Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->addRequests(Ljava/util/Map;)V

    goto :goto_1
.end method
