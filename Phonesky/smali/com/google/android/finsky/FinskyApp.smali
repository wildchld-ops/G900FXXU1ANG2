.class public Lcom/google/android/finsky/FinskyApp;
.super Landroid/app/Application;
.source "FinskyApp.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeApiProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/FinskyApp$CrashHandler;
    }
.end annotation


# static fields
.field private static final RECEIVERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/finsky/FinskyApp;


# instance fields
.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

.field private mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field private mBitmapCache:Lcom/android/volley/Cache;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

.field private mCache:Lcom/android/volley/Cache;

.field private final mClientMutationCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/ClientMutationCache;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAccount:Landroid/accounts/Account;

.field private final mDfeApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApi;",
            ">;"
        }
    .end annotation
.end field

.field private mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

.field private mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field private final mEventLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/analytics/FinskyEventLog;",
            ">;"
        }
    .end annotation
.end field

.field private mExperimentsByAccountName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/experiments/FinskyExperiments;",
            ">;"
        }
    .end annotation
.end field

.field private mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

.field private mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

.field private mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

.field private final mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mUsers:Lcom/google/android/finsky/utils/Users;

.field private mVersionCodeOfLastRun:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/finsky/receivers/BootCompletedReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$RegisteredReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/finsky/receivers/AccountsChangedReceiver;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/FinskyApp;->RECEIVERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mClientMutationCaches:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mEventLoggers:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mExperimentsByAccountName:Ljava/util/Map;

    new-instance v0, Lcom/google/android/finsky/FinskyApp$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/FinskyApp$6;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/finsky/FinskyApp;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/FinskyApp;)Lcom/google/android/finsky/library/LibraryReplicators;
    .locals 1
    .param p0    # Lcom/google/android/finsky/FinskyApp;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/Cache;
    .locals 1
    .param p0    # Lcom/google/android/finsky/FinskyApp;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0    # Lcom/google/android/finsky/FinskyApp;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private checkForCrashOnLastRun(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "crashed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/FinskyApp$CrashHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/FinskyApp$CrashHandler;-><init>(Lcom/google/android/finsky/FinskyApp;Ljava/io/File;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private cleanupOldFinsky()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    const-string v6, "com.google.android.finsky"

    invoke-interface {v5, v6}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.google.android.finsky"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_2

    const-string v5, "com.google.android.finsky"

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v5, Lcom/google/android/finsky/config/G;->tabskyMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v5, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-ge v5, v2, :cond_0

    const-string v5, "Updating com.google.android.finsky from %d to %d"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "com.google.android.finsky"

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/FinskyApp;->downloadSuicidalTabsky(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Unable to disable old finsky package."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static createNetwork()Lcom/android/volley/Network;
    .locals 4

    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/google/android/volley/GoogleHttpClientStack;

    sget-object v3, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    sget-object v0, Lcom/google/android/finsky/config/G;->enableSensitiveLogging:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Landroid/content/Context;Z)V

    new-instance v3, Lcom/android/volley/toolbox/ByteArrayPool;

    sget-object v0, Lcom/google/android/finsky/config/G;->volleyBufferPoolSizeKb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-direct {v3, v0}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/utils/DenyAllNetwork;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/DenyAllNetwork;-><init>()V

    goto :goto_0
.end method

.method private downloadSuicidalTabsky(Ljava/lang/String;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v0, "No current account"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p1, v7, v7, v7}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZZ)V

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "suicidal_tabsky"

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-interface/range {v0 .. v8}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static drain(Lcom/android/volley/RequestQueue;)V
    .locals 1
    .param p0    # Lcom/android/volley/RequestQueue;

    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V

    return-void
.end method

.method public static drain(Lcom/android/volley/RequestQueue;I)V
    .locals 1
    .param p0    # Lcom/android/volley/RequestQueue;
    .param p1    # I

    new-instance v0, Lcom/google/android/finsky/FinskyApp$1;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/FinskyApp$1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method private enableReceivers()V
    .locals 13

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v0, Lcom/google/android/finsky/FinskyApp;->RECEIVERS:[Ljava/lang/Class;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-eq v7, v12, :cond_0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v2, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v8, "Unable to enable %s"

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static get()Lcom/google/android/finsky/FinskyApp;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    return-object v0
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private setupAccountLibrariesAndReplicator(Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/finsky/library/Accounts;)V
    .locals 7
    .param p1    # Landroid/os/Handler;
    .param p2    # Landroid/os/Handler;
    .param p3    # Lcom/google/android/finsky/library/Accounts;

    new-instance v2, Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/library/SQLiteLibrary;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p3, v2, v1, p2}, Lcom/google/android/finsky/library/Libraries;-><init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    sget-object v1, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;-><init>(Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/Libraries;Landroid/os/Handler;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Lcom/google/android/finsky/FinskyApp$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/FinskyApp$4;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updateCachedWidgetUrls(Lcom/google/android/finsky/api/model/DfeToc;)Z
    .locals 9
    .param p0    # Lcom/google/android/finsky/api/model/DfeToc;

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->widgetUrlsByBackend:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeToc;->getRecsWidgetUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/FinskyApp;->updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v7}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/api/model/DfeToc;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/FinskyApp;->updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/api/model/DfeToc;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/FinskyApp;->updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/api/model/DfeToc;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/FinskyApp;->updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/FinskyApp;->updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_8

    :cond_3
    move v0, v3

    :goto_3
    invoke-virtual {v1, v8}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/api/model/DfeToc;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/FinskyApp;->updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_9

    :cond_4
    move v0, v3

    :goto_4
    return v0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4
.end method

.method private static updateWidgetUrl(Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private whoopsWeBrokeEverything()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/vending/AssetBrowserActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public clearCacheAsync(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/ClearCacheRequest;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    new-instance v3, Lcom/google/android/finsky/FinskyApp$5;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/FinskyApp$5;-><init>(Lcom/google/android/finsky/FinskyApp;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public drainAllRequests(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v0, p1}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/utils/BitmapLoader;->drain(I)V

    return-void
.end method

.method public getAnalytics()Lcom/google/android/finsky/analytics/Analytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    return-object v0
.end method

.method public getAnalytics(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics;
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    return-object v0
.end method

.method public getAppStates()Lcom/google/android/finsky/appstate/AppStates;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method public getAppStatesReplicator()Lcom/google/android/finsky/appstate/AppStatesReplicator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    return-object v0
.end method

.method public getBitmapCache()Lcom/android/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-object v0
.end method

.method public getBitmapRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getCache()Lcom/android/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No account specified."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mClientMutationCaches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ClientMutationCache;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/ClientMutationCache;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mClientMutationCaches:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getCurrentAccount()Landroid/accounts/Account;
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p0, v1}, Lcom/google/android/finsky/api/AccountHandler;->getAccountFromPreferences(Landroid/content/Context;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "No account configured on this device."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    goto :goto_0
.end method

.method public getCurrentAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "No account configured on this device."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    goto :goto_0
.end method

.method public getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;
    .locals 9
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v2

    if-nez v7, :cond_2

    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/ContentLevel;->getDfeValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiContext;->create(Landroid/content/Context;Lcom/android/volley/Cache;Lcom/google/android/finsky/experiments/Experiments;Lcom/google/android/finsky/api/DfeNotificationManager;Ljava/lang/String;I)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v6

    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Created new context: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v7, Lcom/google/android/finsky/api/DfeApiImpl;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v7, v0, v6}, Lcom/google/android/finsky/api/DfeApiImpl;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDfeNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    return-object v0
.end method

.method public getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method public getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    return-object v0
.end method

.method public getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 4
    .param p1    # Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mEventLoggers:Ljava/util/Map;

    monitor-enter v3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mEventLoggers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/experiments/FinskyExperiments;)V

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mEventLoggers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v3

    return-object v1

    :cond_1
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    return-object v0
.end method

.method public getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    return-object v0
.end method

.method public getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mExperimentsByAccountName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/experiments/FinskyExperiments;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/experiments/FinskyExperiments;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/experiments/FinskyExperiments;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mExperimentsByAccountName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    return-object v0
.end method

.method public getInstaller()Lcom/google/android/finsky/receivers/Installer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method public getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    return-object v0
.end method

.method public getLibraries()Lcom/google/android/finsky/library/Libraries;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method public getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    return-object v0
.end method

.method public getNotifier()Lcom/google/android/finsky/utils/Notifier;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    return-object v0
.end method

.method public getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    return-object v0
.end method

.method public getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    return-object v0
.end method

.method public getPendingNotificationsHandler()Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getSelfUpdateScheduler()Lcom/google/android/finsky/utils/SelfUpdateScheduler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    return-object v0
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public getUsers()Lcom/google/android/finsky/utils/Users;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mUsers:Lcom/google/android/finsky/utils/Users;

    return-object v0
.end method

.method public getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const-string v1, "Fall back to primary account."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "No account configured on this device."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    goto :goto_0
.end method

.method public getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/vending/remoting/api/VendingApiFactory;->getApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    return v0
.end method

.method public getVersionCodeOfLastRun()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/FinskyApp;->mVersionCodeOfLastRun:I

    return v0
.end method

.method public onCreate()V
    .locals 24

    sput-object p0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    sget-object v2, Lcom/google/android/finsky/config/G;->GSERVICES_KEY_PREFIXES:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/config/GservicesValue;->init(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/config/PreferenceFile;->init(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->versionCode:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/finsky/FinskyApp;->mVersionCodeOfLastRun:I

    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache;

    const-string v2, "main"

    invoke-static {v2}, Lcom/google/android/finsky/FinskyApp;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v2, Lcom/google/android/finsky/config/G;->mainCacheSizeMb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v4, v5, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/FinskyApp;->checkForCrashOnLastRun(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Clearing cache due to crash on previous run."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->whoopsWeBrokeEverything()V

    const-string v2, "Initializing network with DFE %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/volley/GoogleHttpClient;

    const-string v9, ""

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v9, v10}, Lcom/google/android/volley/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v9, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/volley/GoogleHttpClient;->rewriteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/android/volley/RequestQueue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v2, v4, v5, v6}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->start()V

    new-instance v2, Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v2, v4, v5}, Lcom/google/android/vending/remoting/api/VendingApiFactory;-><init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    new-instance v2, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {v2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    new-instance v4, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/finsky/appstate/GmsCoreHelper$GMSCoreNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache;

    const-string v2, "images"

    invoke-static {v2}, Lcom/google/android/finsky/FinskyApp;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v2, Lcom/google/android/finsky/config/G;->imageCacheSizeMb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v4, v5, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    new-instance v2, Lcom/android/volley/RequestQueue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    new-instance v2, Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    move-object/from16 v0, v22

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v9, Lcom/google/android/finsky/utils/TentativeGcRunner;

    invoke-direct {v9}, Lcom/google/android/finsky/utils/TentativeGcRunner;-><init>()V

    invoke-direct {v2, v4, v5, v6, v9}, Lcom/google/android/finsky/utils/BitmapLoader;-><init>(Lcom/android/volley/RequestQueue;IILcom/google/android/finsky/utils/TentativeGcRunner;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->initSingleton()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/VendingBackupAgent;->registerWithBackup(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/finsky/download/obb/ObbFactory;->initialize()V

    new-instance v2, Lcom/google/android/finsky/utils/NotificationManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/utils/NotificationManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    new-instance v19, Lcom/google/android/finsky/download/DownloadManagerImpl;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/download/DownloadManagerImpl;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/download/DownloadManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-static {v2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->initialize(Lcom/google/android/finsky/utils/Notifier;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-static {v2}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->initialize(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/services/DailyHygiene;->goMakeHygieneIfDirty(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/finsky/appstate/PackageManagerRepository;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-result-object v6

    const-string v2, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/finsky/appstate/PackageManagerRepository;-><init>(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Landroid/app/admin/DevicePolicyManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v23

    new-instance v2, Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, v23

    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-direct {v2, v4, v5}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;-><init>(Lcom/google/android/finsky/download/DownloadQueue;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    new-instance v4, Lcom/google/android/finsky/download/obb/ObbPackageTracker;

    invoke-direct {v4}, Lcom/google/android/finsky/download/obb/ObbPackageTracker;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    new-instance v2, Landroid/provider/SearchRecentSuggestions;

    const-string v4, "com.google.android.finsky.RecentSuggestionsProvider"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    new-instance v2, Lcom/google/android/finsky/utils/Users;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/utils/Users;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mUsers:Lcom/google/android/finsky/utils/Users;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->enableReceivers()V

    new-instance v18, Landroid/os/HandlerThread;

    const-string v2, "libraries-thread"

    const/16 v4, 0xa

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/finsky/FinskyApp$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/finsky/FinskyApp$2;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1, v3}, Lcom/google/android/finsky/FinskyApp;->setupAccountLibrariesAndReplicator(Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/finsky/library/Accounts;)V

    sget-object v2, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/finsky/widget/WidgetUtils;->registerLibraryMutationsListener(Landroid/content/Context;Lcom/google/android/finsky/library/LibraryReplicators;)V

    new-instance v8, Landroid/os/Handler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v20, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    new-instance v2, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;

    invoke-direct {v2}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;-><init>()V

    new-instance v4, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v4, v8, v7}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;-><init>(Lcom/google/android/finsky/appstate/InstallerDataStore;Lcom/google/android/finsky/appstate/InstallerDataStore;Landroid/os/Handler;Landroid/os/Handler;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/FinskyApp;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    new-instance v2, Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v4}, Lcom/google/android/finsky/appstate/AppStates;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Lcom/google/android/finsky/appstate/PackageStateRepository;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    new-instance v2, Lcom/google/android/finsky/appstate/AppStatesReplicator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/finsky/appstate/AppStatesReplicator;-><init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/vending/remoting/api/VendingApiFactory;Landroid/os/Handler;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-static {v2, v4}, Lcom/google/android/finsky/services/ContentSyncService;->setupListeners(Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    new-instance v2, Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v2, v4, v5, v6, v9}, Lcom/google/android/finsky/installer/InstallPolicies;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    new-instance v9, Lcom/google/android/finsky/receivers/InstallerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/FinskyApp;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/FinskyApp;->mUsers:Lcom/google/android/finsky/utils/Users;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v17}, Lcom/google/android/finsky/receivers/InstallerImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/utils/Users;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    new-instance v4, Lcom/google/android/finsky/FinskyApp$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/finsky/FinskyApp$3;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    invoke-interface {v2, v4}, Lcom/google/android/finsky/receivers/Installer;->start(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/google/android/finsky/utils/GELInstallerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/google/android/finsky/utils/GELInstallerListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;)V

    new-instance v9, Lcom/google/android/finsky/DfeNotificationManagerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    move-object/from16 v10, p0

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/finsky/DfeNotificationManagerImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/library/Accounts;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/finsky/FinskyApp;->mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V

    new-instance v2, Lcom/google/android/finsky/utils/UninstallRefundTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/finsky/utils/UninstallRefundTracker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    new-instance v2, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    new-instance v2, Lcom/google/android/finsky/appstate/MigrationAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v2, Lcom/google/android/finsky/config/G;->analyticsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->cleanupOldFinsky()V

    return-void

    :cond_1
    new-instance v2, Lcom/google/android/finsky/analytics/StubAnalytics;

    invoke-direct {v2}, Lcom/google/android/finsky/analytics/StubAnalytics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    goto :goto_0
.end method

.method public setToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/google/android/finsky/FinskyApp;->updateCachedWidgetUrls(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.finsky.action.TOC_SET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/FinskyApp;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchCurrentAccount(Landroid/accounts/Account;)V
    .locals 3
    .param p1    # Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v1, v2}, Lcom/google/android/finsky/api/AccountHandler;->saveAccountToPreferences(Landroid/accounts/Account;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)V

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    invoke-interface {v1}, Lcom/google/android/finsky/analytics/Analytics;->reset()V

    invoke-static {p0}, Lcom/google/android/finsky/widget/WidgetUtils;->notifyAccountSwitch(Landroid/content/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
