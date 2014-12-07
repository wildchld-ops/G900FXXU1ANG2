.class public Lcom/google/android/finsky/appstate/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    iput-object p5, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iput-object p6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/library/Libraries;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/appstate/AppStates;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/appstate/UpdateChecker;Lcom/google/android/finsky/api/model/MultiWayUpdateController;)Lcom/google/android/finsky/api/model/MultiWayUpdateController;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeModel:Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/appstate/UpdateChecker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/appstate/UpdateChecker;->handleUpdates(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/receivers/Installer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method private handleUpdates(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateFirstTimeForAccounts:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/google/android/finsky/config/G;->autoUpdateDeliveryHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    move v3, v5

    :goto_0
    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->autoUpdateFirstTimeForAccounts:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v4, p2}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsWithUpdates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForAutoUpdate(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v4}, Lcom/google/android/finsky/installer/InstallPolicies;->isWifiNetwork()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    const-string v7, "auto_update"

    invoke-interface {v4, v1, v7, v6, v3}, Lcom/google/android/finsky/receivers/Installer;->updateInstalledApps(Ljava/util/List;Ljava/lang/String;ZZ)V

    if-eqz v3, :cond_1

    const-string v4, "Auto-update of %d packages will defer for %d ms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    sget-object v6, Lcom/google/android/finsky/config/G;->autoUpdateDeliveryHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/google/android/finsky/appstate/UpdateChecker$2;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/appstate/UpdateChecker$2;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker;)V

    sget-object v4, Lcom/google/android/finsky/config/G;->autoUpdateDeliveryHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4}, Lcom/google/android/finsky/utils/Notifier;->hideUpdatesAvailableMessage()V

    if-eqz v2, :cond_2

    invoke-static {v5, p3}, Lcom/google/android/finsky/appstate/UpdateChecker;->logWifiAutoUpdate(ZLjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->showUpdateNotifications(Ljava/util/List;)V

    return-void

    :cond_3
    move v3, v6

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->scheduleCheck()V

    invoke-static {v6, p3}, Lcom/google/android/finsky/appstate/UpdateChecker;->logWifiAutoUpdate(ZLjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/finsky/appstate/UpdateChecker;->logNoWifiAutoUpdate()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/finsky/appstate/UpdateChecker;->logNoWifiAutoUpdate()V

    goto :goto_1
.end method

.method public static logNoWifiAutoUpdate()V
    .locals 3

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->wifiAutoUpdateFailedAttempts:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "auto_update_obsolete"

    invoke-static {v1, v2}, Lcom/google/android/finsky/appstate/UpdateChecker;->logWifiAutoUpdate(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logWifiAutoUpdate(ZLjava/lang/String;)V
    .locals 14

    const/4 v13, 0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;-><init>()V

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->wifiAutoUpdateFailedAttempts:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz p0, :cond_2

    iput v6, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    const/4 v6, 0x0

    :goto_0
    iput-boolean v13, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasNumFailedAttempts:Z

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->wifiAutoUpdateFirstFailMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-eqz v11, :cond_0

    sub-long v7, v1, v3

    :cond_0
    iput-wide v7, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->timeSinceFirstFailMs:J

    iput-boolean v13, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasTimeSinceFirstFailMs:Z

    if-eqz p0, :cond_3

    const-wide/16 v3, 0x0

    :cond_1
    :goto_1
    sget-object v11, Lcom/google/android/finsky/config/G;->autoUpdateWifiCheckIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-boolean p0, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->autoUpdateSuccess:Z

    iput-boolean v13, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasAutoUpdateSuccess:Z

    iput-wide v9, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->wifiCheckIntervalMs:J

    iput-boolean v13, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->hasWifiCheckIntervalMs:Z

    invoke-virtual {v5, v0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logWifiAutoUpdateAttempt(Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;Ljava/lang/String;)V

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->wifiAutoUpdateFailedAttempts:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->wifiAutoUpdateFirstFailMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/google/android/finsky/analytics/PlayStore$WifiAutoUpdateAttempt;->numFailedAttempts:I

    goto :goto_0

    :cond_3
    if-ne v6, v13, :cond_1

    move-wide v3, v1

    goto :goto_1
.end method

.method private markAppsAsNotified(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v3

    iget v5, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v6

    if-le v5, v6, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static migrateAllAppsToUseGlobalUpdateSetting(Lcom/google/android/finsky/appstate/AppStates;ZLcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x194

    move-object v3, p3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v10

    if-nez p1, :cond_1

    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v10, v0, :cond_0

    :cond_1
    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    const-string v0, "Migrate %s autoupdate from default to %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v11, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static migrateAutoUpdateSettings(Lcom/google/android/finsky/appstate/AppStates;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/AppStates;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Require loaded app states to migrate auto-update state."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v2

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v1

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getVersionCodeOfLastRun()I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_3
    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :cond_4
    if-nez v0, :cond_5

    move v3, v6

    :cond_5
    sget-object v5, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v7, "version"

    invoke-static {p0, v3, v5, v7}, Lcom/google/android/finsky/appstate/UpdateChecker;->migrateAllAppsToUseGlobalUpdateSetting(Lcom/google/android/finsky/appstate/AppStates;ZLcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    sget-object v5, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->hadPreJsAutoUpdateSettings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setAllAppsToUseGlobalDefault(Lcom/google/android/finsky/appstate/AppStates;)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v2, "cleanup"

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/finsky/appstate/UpdateChecker;->migrateAllAppsToUseGlobalUpdateSetting(Lcom/google/android/finsky/appstate/AppStates;ZLcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V

    return-void
.end method

.method private showUpdateNotifications(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForNewUpdateNotification(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/finsky/appstate/UpdateChecker;->markAppsAsNotified(Ljava/util/List;)V

    sget-object v11, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/google/android/finsky/installer/InstallPolicies;->getAppsThatRequireUpdateWarnings(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    const/4 v12, 0x1

    invoke-virtual {v11, v4, v12}, Lcom/google/android/finsky/installer/InstallPolicies;->getAppsThatRequireUpdateWarnings(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->lastUpdateAvailNotificationTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v9, v12, v14

    if-nez v2, :cond_3

    if-lez v8, :cond_3

    const-string v11, "Notifying user that [%d/%d] applications have new updates."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v11, v4, v7}, Lcom/google/android/finsky/utils/Notifier;->showNewUpdatesAvailableMessage(Ljava/util/List;I)V

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->lastUpdateAvailNotificationTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const-string v11, "Notifying user [%d/%d] applications have updates that require approval."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v11, v1, v7}, Lcom/google/android/finsky/utils/Notifier;->showUpdatesNeedApprovalMessage(Ljava/util/List;I)V

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->lastUpdateAvailNotificationTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    sget-object v11, Lcom/google/android/finsky/config/G;->outstandingNotificationTimeDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v11}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_0

    const-string v11, "Notifying user that %d applications have outstanding updates."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/google/android/finsky/utils/Notifier;->showOutstandingUpdatesMessage(Ljava/util/List;)V

    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->lastUpdateAvailNotificationTimestampMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->cancelCheck()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Require loaded app states to perform update check."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Require loaded libraries to perform update check."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-static {v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->migrateAutoUpdateSettings(Lcom/google/android/finsky/appstate/AppStates;)V

    new-instance v3, Lcom/google/android/finsky/appstate/GmsCoreHelper;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v1, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/finsky/appstate/GmsCoreHelper;-><init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/UpdateChecker$1;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/GmsCoreHelper;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
