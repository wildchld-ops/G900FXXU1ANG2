.class Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;
.super Ljava/lang/Object;
.source "PackageMonitorReceiver.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferrerRebroadcaster"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver$1;

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;-><init>()V

    return-void
.end method

.method private broadcastInstallReferrer(Ljava/lang/String;Z)V
    .locals 15
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v11, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v11}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v11}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v11

    iget-boolean v11, v11, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    if-eqz v11, :cond_6

    const/4 v6, 0x1

    :goto_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xc

    if-lt v11, v12, :cond_7

    const/4 v10, 0x1

    :goto_2
    if-nez v6, :cond_2

    move/from16 v0, p2

    if-eq v10, v0, :cond_8

    :cond_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_0

    iget-object v11, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v11}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getExternalReferrer()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_3

    const-string v5, "forced-launch"

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xd

    if-lt v11, v12, :cond_4

    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v11, "Forcing %s to wake up"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-string v11, "referrer"

    invoke-virtual {v7, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;->getActivityNameForBroadcast(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "Sending broadcast %s: referrer=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "com.android.vending.INSTALL_REFERRER"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v12}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setExternalReferrer(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private getActivityNameForBroadcast(Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3, p2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;->broadcastInstallReferrer(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$ReferrerRebroadcaster;->broadcastInstallReferrer(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    return-void
.end method
