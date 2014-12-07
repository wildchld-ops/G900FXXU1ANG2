.class Lcom/google/android/finsky/receivers/InstallerTask$4;
.super Landroid/os/AsyncTask;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->startActivation(Lcom/google/android/finsky/appstate/AppStates$AppState;)Z
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v3, v3, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/PackageManagerUtils;->installExistingPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v1, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mShowCompletionNotifications:Z
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$800(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v1, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->addAppShortcut(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "installExistingPackage %s result %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v5, v1, v2

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x6d

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;
    invoke-static {v5}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    const/16 v1, 0x46

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    # invokes: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$4;->val$appState:Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$4;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
