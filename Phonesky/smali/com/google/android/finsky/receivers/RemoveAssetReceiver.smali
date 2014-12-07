.class public Lcom/google/android/finsky/receivers/RemoveAssetReceiver;
.super Lcom/google/android/finsky/download/DownloadReceiver;
.source "RemoveAssetReceiver.java"


# static fields
.field private static sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/RemoveAssetReceiver;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->finishOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private finishOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v4, "asset_package"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "asset_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "asset_malicious"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Unexpected empty package name"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->removePackage(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->notifyRemovingKnownApp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0
.end method

.method public static initialize(Lcom/google/android/finsky/utils/Notifier;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/Notifier;

    sput-object p0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    return-void
.end method

.method private notifyRemovingKnownApp(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v0, p4, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    sget-object v0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0, p2, p1}, Lcom/google/android/finsky/utils/Notifier;->showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->sNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0, p2, p1}, Lcom/google/android/finsky/utils/Notifier;->showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removePackage(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const-string v8, "Removing package \'%s\'. Malicious=\'%s\'"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    const-string v8, "Removing package \'%s\' (child of \'%s\')"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "\'%s\' not found in PM."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->setResultCode(I)V

    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "REMOVE_ASSET"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver$1;-><init>(Lcom/google/android/finsky/receivers/RemoveAssetReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
