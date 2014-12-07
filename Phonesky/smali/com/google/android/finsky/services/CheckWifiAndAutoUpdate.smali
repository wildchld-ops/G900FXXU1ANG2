.class public Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;
.super Landroid/app/Service;
.source "CheckWifiAndAutoUpdate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;

    invoke-direct {p0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->onLoaded()V

    return-void
.end method

.method public static cancelCheck()V
    .locals 5

    const-string v3, "Cancelling auto-update wifi check."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static getPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private loadLibrariesAndAutoUpdate()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$1;-><init>(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onLoaded()V
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/UpdateChecker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V

    new-instance v1, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$2;-><init>(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V

    new-instance v3, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate$3;-><init>(Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;)V

    const-string v4, "wifi_checker"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static scheduleCheck()V
    .locals 9

    const-string v4, "Scheduling auto-update wifi check."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v4, Lcom/google/android/finsky/config/G;->autoUpdateWifiCheckIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/installer/InstallPolicies;->isWifiNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Checking wifi: enabled, proceeding with auto-update."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->loadLibrariesAndAutoUpdate()V

    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_0
    const-string v0, "Checking wifi: disabled, will check wifi again later."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "wifi_checker"

    invoke-static {v2, v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->logWifiAutoUpdate(ZLjava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->scheduleCheck()V

    invoke-virtual {p0}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->stopSelf()V

    goto :goto_0
.end method
