.class public Lcom/google/android/finsky/receivers/InstallerImpl;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;
.implements Lcom/google/android/finsky/receivers/Installer;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;
    }
.end annotation


# static fields
.field private static PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field mListener:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/installer/InstallerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private final mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mRunning:Z

.field private mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

.field private mServiceConnectionCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Lcom/google/android/finsky/utils/Users;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/utils/Users;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/receivers/InstallerImpl$6;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListener:Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iput-object p5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iput-object p6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    iput-object p7, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    iput-object p8, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUsers:Lcom/google/android/finsky/utils/Users;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/appstate/AppStates;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/download/DownloadQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/receivers/InstallerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/receivers/InstallerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/InstallerImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->recoverRunningDownloads(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/receivers/InstallerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/receivers/InstallerImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    return-object v0
.end method

.method private bindToMultiUserCoordinator(Ljava/lang/Runnable;)V
    .locals 5

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;)V

    iput-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->createBindIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "Couldn\'t start service for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "Cancel pending install of %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    :cond_0
    return-void
.end method

.method private getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;
    .locals 6

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v5, :cond_0

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, p1}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    move-object v3, v4

    goto :goto_0
.end method

.method private getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kick(Ljava/lang/String;Z)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$3;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z

    if-nez v0, :cond_2

    const-string v0, "Installer kick %s - no action, not running yet"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_3

    const-string v0, "Installer kick %s - no action because busy."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->kickMultiUser(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->selectNextTask(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v0, "Installer kick %s - starting %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v2, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->start()V

    goto :goto_0
.end method

.method private kickMultiUser(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->unbindMultiUserCoordinator()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$4;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/google/android/finsky/receivers/InstallerImpl;->selectNextTaskMultiUser(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v0, "Installer kick %s - starting %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->start()V

    goto :goto_0
.end method

.method private multiUserMode()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUsers:Lcom/google/android/finsky/utils/Users;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/Users;->hasMultipleUsers()Z

    move-result v0

    return v0
.end method

.method private recoverDownload(Landroid/net/Uri;I)Z
    .locals 13

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v2, :cond_2

    const-string v2, "tried recovery while already handling %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v5, v5, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v7

    const/4 v11, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v10}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v11, v10

    :cond_4
    if-nez v11, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v11}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recovering download for running %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->acquirePackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Can\'t recover %s *** cannot acquire"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v2, "Acquiring %s *** received %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;-><init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->recover(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->releasePackage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v8

    const-string v2, "Releasing %s *** received %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private recoverRunningDownloads(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;

    const-string v4, "Attempt recovery of %s %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    aput-object v6, v5, v7

    iget v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v1, :cond_0

    iget v4, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->recoverDownload(Landroid/net/Uri;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "Releasing %s %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->contentUri:Ljava/lang/String;

    aput-object v6, v5, v7

    iget v6, v2, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;->status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v4, v3}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private releaseMultiUserPackage(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$5;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->bindToMultiUserCoordinator(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectNextTask(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    :cond_1
    return-object v0
.end method

.method private selectNextTaskMultiUser(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;)",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->acquirePackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v4, "Couldn\'t acquire %s (proceed anyway) received %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    :try_start_1
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->acquirePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v4, "Skipping install of %s - not acquired"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "Couldn\'t acquire %s (proceed anyway) received %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unbindMultiUserCoordinator()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->registerListener(Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    invoke-interface {v1}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;->releaseAllPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mCoordinatorService:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mServiceConnection:Lcom/google/android/finsky/receivers/InstallerImpl$RemoteServiceConnection;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t sign out from coordinator *** received %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/google/android/finsky/installer/InstallerListener;)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getAppsToInstall()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->cancelPendingInstall(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void
.end method

.method clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/receivers/InstallerTask;->getProgress()Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :cond_2
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-le v3, v1, :cond_3

    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/google/android/finsky/receivers/InstallerImpl;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/receivers/InstallerTask;->getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :cond_2
    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-le v3, v1, :cond_3

    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/receivers/InstallerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/receivers/InstallerImpl$2;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v6, v3

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/google/android/finsky/receivers/InstallerTask;->getAppData()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    goto :goto_0
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v6, v3

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->onComplete(Lcom/google/android/finsky/download/Download;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/google/android/finsky/receivers/InstallerTask;->getAppData()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    goto :goto_0
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v6, v3

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v4, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->onError(Lcom/google/android/finsky/download/Download;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/google/android/finsky/receivers/InstallerTask;->getAppData()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    goto :goto_0
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .locals 6

    const/4 v5, 0x0

    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding notification click, no packageName for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v5, v5, v4}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4}, Lcom/google/android/finsky/utils/Notifier;->hideInstallingMessage()V

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    if-ne v4, v5, :cond_3

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v4, p1, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    :cond_1
    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4, p1}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v2

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v4, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-ge v4, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v7

    if-nez v7, :cond_1

    move-object v6, v3

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->onStart(Lcom/google/android/finsky/download/Download;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/google/android/finsky/receivers/InstallerTask;->getAppData()Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-result-object v6

    goto :goto_0
.end method

.method public removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 39

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v2, v3, :cond_1

    const-string v2, "Dropping install request for %s because already installing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v30

    move/from16 v34, p2

    if-eqz v30, :cond_4

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-object/from16 v38, v0

    :goto_1
    if-eqz v38, :cond_5

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    move/from16 v37, v0

    :goto_2
    new-instance v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v8}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    move/from16 v0, v34

    iput v0, v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasVersion:Z

    const/4 v2, -0x1

    move/from16 v0, v37

    if-le v0, v2, :cond_2

    move/from16 v0, v37

    iput v0, v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    :cond_2
    if-eqz v38, :cond_3

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-boolean v2, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iput-boolean v2, v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;->systemApp:Z

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasSystemApp:Z

    :cond_3
    move/from16 v0, v34

    move/from16 v1, v37

    if-gt v0, v1, :cond_7

    const-string v2, "Skipping attempt to download %s version %d over version %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const/16 v3, 0x70

    const-string v5, "older-version"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v2, :cond_6

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v31

    :goto_3
    and-int/lit8 v2, v31, 0x1

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0900f7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const/16 v38, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v37, -0x1

    goto/16 :goto_2

    :cond_6
    const/16 v31, 0x0

    goto :goto_3

    :cond_7
    const-string v2, "Request install of %s v=%d for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p8, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const/16 v3, 0x69

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p8

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const/16 v25, 0x0

    const/16 v32, 0xc

    new-instance v9, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    sget-object v11, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->USE_GLOBAL:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move/from16 v13, p2

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p3

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v29}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;IILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[Ljava/lang/String;)V

    if-eqz v30, :cond_8

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v2, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v2, v9}, Lcom/google/android/finsky/appstate/InstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    :cond_9
    :goto_4
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_PENDING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    if-nez p7, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v2

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v3

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    :cond_b
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v2

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v3

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getExternalReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setExternalReferrer(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v35

    and-int/lit8 v2, v35, -0xd

    or-int v33, v2, v25

    move/from16 v0, v35

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_10
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v2, v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public setMobileDataAllowed(Ljava/lang/String;)V
    .locals 5

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    :cond_0
    or-int/lit8 v2, v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public setVisibility(Ljava/lang/String;ZZZ)V
    .locals 5

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    :cond_0
    and-int/lit16 v2, v3, -0x92

    if-nez p2, :cond_1

    or-int/lit8 v2, v2, 0x10

    :cond_1
    if-nez p3, :cond_2

    or-int/lit8 v2, v2, 0x1

    :cond_2
    if-nez p4, :cond_3

    or-int/lit16 v2, v2, 0x80

    :cond_3
    if-eq v2, v3, :cond_4

    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Notifier;->hideInstallingMessage()V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;-><init>(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startDeferredInstalls()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void
.end method

.method taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    if-eq p1, v0, :cond_0

    const-string v0, "Unexpected (late?) finish of task for %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object v5, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerTask:Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->multiUserMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->releaseMultiUserPackage(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V

    return-void
.end method

.method public uninstallAssetSilently(Ljava/lang/String;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unexpected empty package name"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->getInstallerTask(Ljava/lang/String;)Lcom/google/android/finsky/receivers/InstallerTask;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :goto_1
    const/4 v6, 0x0

    if-eqz v8, :cond_2

    new-instance v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v6}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    iget v0, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    iput-boolean v10, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v0, v10

    :goto_2
    iput-boolean v0, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->systemApp:Z

    iput-boolean v10, v6, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasSystemApp:Z

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x72

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mUninstallingPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-virtual {p0, p1, v0, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    invoke-static {p1}, Lcom/google/android/finsky/utils/PackageManagerHelper;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v0, "Skipping uninstall of %s - already uninstalled."

    new-array v1, v10, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public uninstallPackagesByUid(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
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

    aput-object v7, v9, v10

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerImpl;->uninstallAssetSilently(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "Skipping uninstall of %s - already uninstalled."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateInstalledApps(Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v8, p3, v8}, Lcom/google/android/finsky/receivers/InstallerImpl;->setVisibility(Ljava/lang/String;ZZZ)V

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v2

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerImpl;->updateSingleInstalledApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSingleInstalledApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Cannot update %s because not installed."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v9, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v9, p1, v0, v1}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerImpl;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v9, p1, v0, v1, v2}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getAppDetailsAccount(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Cannot update %s because cannot determine update account."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move/from16 v7, p5

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/receivers/InstallerImpl;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
