.class public Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;
.super Ljava/lang/Object;
.source "GmsCoreHelper.java"

# interfaces
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/GmsCoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMSCoreNotifier"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static reconnectNlp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v12, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Lcom/google/android/finsky/config/G;->nlpReinstallSdkVersionMin:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Lcom/google/android/finsky/config/G;->nlpReinstallSdkVersionMax:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v3, v0, :cond_0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_SHARED_USER_ID:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_SHARED_USER_ID:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Found shared UID match between NLP and %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v12

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    new-instance v8, Ljava/io/File;

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v2, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$2;

    invoke-direct {v2}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$2;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PackageManagerUtils;->installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException getting info for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->NLP_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    const-string v0, "NameNotFoundException getting info for %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v12

    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .param p3    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    new-instance v0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier$1;-><init>(Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;)V

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.google.android.gms.GMS_UPDATED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/google/android/finsky/appstate/GmsCoreHelper;->PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_0
    iget-object v7, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1

    move v4, v5

    :goto_0
    and-int/lit16 v7, v2, 0x80

    if-eqz v7, :cond_2

    :goto_1
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    sget-object v6, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v7, "downgrade"

    invoke-direct {p0, p1, v6, v7}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V

    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->reconnectNlp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string v7, "NameNotFoundException getting info for %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v7, "install/update"

    invoke-direct {p0, p1, v6, v7}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->reconnectNlp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/google/android/finsky/appstate/GmsCoreHelper;->isGmsCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v1, "removed"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
