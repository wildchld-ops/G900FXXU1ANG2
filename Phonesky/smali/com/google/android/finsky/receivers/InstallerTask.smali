.class Lcom/google/android/finsky/receivers/InstallerTask;
.super Ljava/lang/Object;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/InstallerTask$7;
    }
.end annotation


# static fields
.field private static PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

.field private static PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;


# instance fields
.field private mApkCompleted:J

.field private mApkSize:J

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private mDownloadStatus:I

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

.field private final mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mIsUpdate:Z

.field private mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

.field private mMobileDataAllowed:Z

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private mObbMain:Lcom/google/android/finsky/download/obb/Obb;

.field private mObbMainCompleted:J

.field private mObbMainSize:J

.field private mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

.field private mObbPatchCompleted:J

.field private mObbPatchSize:J

.field private mRecoveredIntoState:I

.field private mShowCompletionNotifications:Z

.field private mShowErrorNotifications:Z

.field private mShowProgress:Z

.field private mTitle:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    sput-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/receivers/InstallerImpl;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/receivers/InstallerImpl;
    .param p3    # Lcom/google/android/finsky/appstate/AppStates;
    .param p4    # Lcom/google/android/finsky/download/DownloadQueue;
    .param p5    # Lcom/google/android/finsky/utils/Notifier;
    .param p6    # Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iput-object p5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-virtual {p3}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iput-object p6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/InstallerDataStore;
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/appstate/AppStates;
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/analytics/PlayStore$AppData;
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/receivers/InstallerTask;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/receivers/InstallerTask;ILandroid/net/Uri;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # I
    .param p2    # Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/download/DownloadQueue;
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/receivers/InstallerTask;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/receivers/InstallerTask;I)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->deliveryResponseToInstallerError(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/android/volley/VolleyError;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/receivers/InstallerTask;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowCompletionNotifications:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/receivers/InstallerTask;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/receivers/InstallerTask;

    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    return v0
.end method

.method private advanceState()V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v8, :cond_1

    :cond_0
    const-string v7, "Unexpected missing installer data for %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    const-string v7, "Bad state %d for %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v1

    iget-object v6, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v6, :cond_3

    iget v3, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :goto_1
    if-lt v3, v1, :cond_4

    if-le v3, v1, :cond_2

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    :cond_2
    const/16 v8, 0x46

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->getInstalledVersionForOtherUser(Lcom/google/android/finsky/appstate/AppStates$AppState;)I

    move-result v5

    if-lt v5, v1, :cond_6

    if-le v5, v1, :cond_5

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    const/16 v8, 0x32

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->checkValidDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto :goto_0

    :cond_7
    :sswitch_2
    invoke-direct {p0, v4, v11}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    :sswitch_3
    invoke-direct {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_8

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto/16 :goto_0

    :cond_8
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->startInstaller(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v7, v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v7, p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_2
        0x14 -> :sswitch_3
        0x19 -> :sswitch_0
        0x1e -> :sswitch_3
        0x23 -> :sswitch_0
        0x28 -> :sswitch_3
        0x2d -> :sswitch_0
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
        0x50 -> :sswitch_7
    .end sparse-switch
.end method

.method private canDownloadPatch(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .locals 27
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    and-int/lit8 v23, v10, 0x4

    if-eqz v23, :cond_1

    iget-object v0, v4, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    const/16 v23, 0x1

    :goto_0
    return v23

    :cond_0
    const-string v23, "Missing patch for %s while is_patch set in %d"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-object/from16 v23, v0

    and-int/lit8 v24, v10, -0x5

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_1
    and-int/lit8 v23, v10, 0x8

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v4, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    const/16 v23, 0x0

    goto :goto_0

    :cond_3
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    const-string v23, "gingerbread"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v21

    if-nez v21, :cond_5

    const-string v23, "no-base-app-installed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, v22

    iget v9, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;->baseVersionCode:I

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v9, :cond_6

    const-string v23, "wrong-base-app-installed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, need version %d but has %d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    :cond_7
    const-string v23, "base-app-dirs-mismatch"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, source dir is %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    aput-object v5, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v23, "base-app-NameNotFoundException"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, NameNotFoundException"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->dataPartitionAvailableSpace()J

    move-result-wide v11

    sget-object v23, Lcom/google/android/finsky/config/G;->downloadPatchFreeSpaceFactor:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v23, v0

    iget-wide v0, v4, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    const-wide/16 v25, 0x64

    div-long v17, v23, v25

    cmp-long v23, v11, v17

    if-gez v23, :cond_9

    const-string v23, "free-space"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, need %d, free %d"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_a

    const-string v23, "base-file-exists"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, file does not exist %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    aput-object v14, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_1
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v23, -0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;->baseSignature:Ljava/lang/String;

    move-object/from16 v25, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v25

    invoke-static {v15, v0, v1, v2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->verifyApk(Ljava/io/InputStream;JLjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v23, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string v23, "base-file-signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, bad hash, expect %s actual %s"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    iget-object v0, v8, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;->expected:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x2

    iget-object v0, v8, Lcom/google/android/finsky/utils/Sha1Util$FileHashVerificationError;->actual:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v7

    const-string v23, "base-file-FileNotFoundException"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, FileNotFoundException, %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    aput-object v14, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v16

    const-string v23, "base-file-otherexception"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "Cannot patch %s, unexpected exception %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method private cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    const/4 v5, 0x0

    const-string v2, "Cancel running installation of %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v2, v0}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/receivers/InstallerImpl;->clearInstallerState(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v2, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/receivers/InstallerImpl;->taskFinished(Lcom/google/android/finsky/receivers/InstallerTask;)V

    return-void
.end method

.method private checkValidDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .locals 13
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    const-wide/16 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v6

    if-nez v6, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryDataTimestampMs()J

    move-result-wide v4

    cmp-long v6, v4, v11

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/google/android/finsky/config/G;->deliveryDataExpirationMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long v0, v4, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v6, v0, v9

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9, v11, v12}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v2

    and-int/lit8 v3, v2, -0x5

    if-eq v3, v2, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_0
.end method

.method public static cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V
    .locals 11
    .param p0    # Lcom/google/android/finsky/download/obb/Obb;
    .param p1    # Lcom/google/android/finsky/download/obb/Obb;
    .param p2    # Ljava/lang/String;

    const/4 v9, 0x3

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v8

    if-ne v8, v9, :cond_2

    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v3

    :cond_2
    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v8

    if-ne v8, v9, :cond_3

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v5

    :cond_3
    invoke-static {p2}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v0, v7

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_6
    const-string v8, "OBB cleanup %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private cleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    const/4 v9, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v1, -0x1

    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :cond_0
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    if-eq v1, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v5, 0x38e

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v9, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v7, :cond_2

    const-string v5, "Lost main obb file for %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x38f

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/16 v5, 0x38f

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v9, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v5}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    if-eq v5, v7, :cond_3

    const-string v5, "Lost patch obb file for %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALL_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v6, 0x390

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/16 v5, 0x390

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V

    const/16 v5, 0x50

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    iget-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastUpdateTimestampMs(Ljava/lang/String;J)V

    :cond_4
    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    iget-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowCompletionNotifications:Z

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    invoke-interface {v4, v3, v5, v0, v6}, Lcom/google/android/finsky/utils/Notifier;->showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto/16 :goto_0
.end method

.method private deliveryResponseToInstallerError(I)I
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x3af

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x3ac

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x3ad

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x3ae

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;
    .locals 20
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    const/4 v7, 0x0

    aget-object v16, v6, v7

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerTask;->canDownloadPatch(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;->downloadUrl:Ljava/lang/String;

    const-wide/16 v9, -0x1

    move-object/from16 v0, v19

    iget-wide v11, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;->maxPatchSize:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v18

    and-int/lit8 v6, v18, 0x4

    if-nez v6, :cond_0

    or-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    move/from16 v0, v18

    invoke-interface {v6, v4, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->value:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    if-nez v15, :cond_3

    const/4 v15, 0x1

    :goto_2
    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    return-object v1

    :cond_1
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    move-wide v11, v9

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;
    .locals 19
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p2    # Lcom/google/android/finsky/download/obb/Obb;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v18

    const v2, 0x7f09020b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, v18

    iget-wide v9, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->value:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v11, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    if-nez v11, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-wide v11, v9

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    return-object v1

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private getInstalledVersionForOtherUser(Lcom/google/android/finsky/appstate/AppStates$AppState;)I
    .locals 8
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    const/4 v3, -0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getUsers()Lcom/google/android/finsky/utils/Users;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/utils/Users;->supportsMultiUser()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    const-string v4, "Found %s version %d installed for another user"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
    .locals 1
    .param p1    # Landroid/net/Uri;

    new-instance v0, Lcom/google/android/finsky/receivers/InstallerTask$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$3;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Landroid/net/Uri;)V

    return-object v0
.end method

.method private notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/finsky/receivers/InstallerImpl;->notifyListeners(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    return-void
.end method

.method private populateFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowErrorNotifications:Z

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowCompletionNotifications:Z

    new-instance v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v2}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    iput v4, v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iput-boolean v3, v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasVersion:Z

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iget-object v4, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v4, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v4, v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iput-boolean v3, v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iget-object v4, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-boolean v4, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iput-boolean v4, v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;->systemApp:Z

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iput-boolean v3, v2, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasSystemApp:Z

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2
.end method

.method private processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p2    # Z

    const/4 v10, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    iput-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    iget-object v3, v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v3, v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v3

    if-ne v3, v10, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v3

    if-ne v3, v10, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-eqz p2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-nez v3, :cond_2

    iget-wide v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    iget-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    add-long v1, v6, v8

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v3}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-gez v3, :cond_4

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mMobileDataAllowed:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstaller:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerImpl;->setMobileDataAllowed(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private recoverApk(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z
    .locals 7
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;
    .param p2    # Landroid/net/Uri;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gt p4, p5, :cond_0

    const-string v3, "Recovery of %s skipped because desired= %d installed= %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_0
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusCompleted(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Recovery of %s into downloading APK state"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Recovery of %s into ready to install state"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x32

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "Recovery of %s into error state, status= %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v2, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private recoverInstalling(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z
    .locals 5
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;
    .param p2    # Landroid/net/Uri;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge p4, p5, :cond_0

    const-string v0, "Recovery of %s skipped because desired= %d installed= %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v4

    :cond_0
    if-ne p4, p5, :cond_1

    const-string v0, "Recovery of %s - installation seems complete"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x46

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    :cond_1
    const-string v0, "Recovery of %s with incomplete installation"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v0, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_0
.end method

.method private recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z
    .locals 9
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;
    .param p2    # Landroid/net/Uri;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Z

    if-eqz p6, :cond_0

    const-string v4, "Patch"

    :goto_0
    if-gt p4, p5, :cond_1

    const-string v5, "Recovery of %s %s Obb skipped because desired= %d installed= %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_0
    const-string v4, "Main"

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusCompleted(I)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Recovery of %s %s Obb into downloading OBB state"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    :goto_2
    iget-object v5, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v5, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v5, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p6, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    :goto_3
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Recovery of %s %s Obb skipped - finalize failed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    if-eqz p6, :cond_5

    const/16 v0, 0x390

    :goto_4
    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v5, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    goto :goto_3

    :cond_5
    const/16 v0, 0x38f

    goto :goto_4

    :cond_6
    const-string v5, "Recovery of %s %s Obb into ready to install state"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_7

    const/16 v2, 0x28

    :goto_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0x1e

    goto :goto_5

    :cond_8
    const-string v5, "Recovery of %s %s Obb into error state, status= %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v5, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v5, p3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v5, 0x0

    invoke-direct {p0, p3, v5}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x6c

    const/16 v4, 0x395

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void
.end method

.method private requestDeliveryData(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 17
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v16

    const/4 v12, 0x0

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountForUpdate()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v1, "Account %s for update of %s no longer exists."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccountForUpdate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v12, :cond_1

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v12

    :cond_1
    if-nez v12, :cond_2

    const-string v1, "Invalid account %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v3, 0x38a

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/16 v1, 0x38a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/finsky/config/G;->downloadSendBaseVersionCode:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v1, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v1, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v9, v1, v3

    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v13

    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "1"

    const/4 v8, 0x0

    new-instance v10, Lcom/google/android/finsky/receivers/InstallerTask$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/google/android/finsky/receivers/InstallerTask$1;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/finsky/receivers/InstallerTask$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/google/android/finsky/receivers/InstallerTask$2;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;)V

    invoke-interface/range {v1 .. v11}, Lcom/google/android/finsky/api/DfeApi;->delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    const/16 v1, 0xa

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private requireExternalStorageOrCancel(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z
    .locals 8
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const-string v0, "Cancel download of %s because no external storage for OBB"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v1, 0x385

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x70

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const-string v3, "obb-no-external-storage"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowErrorNotifications:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/Notifier;->showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v4, v7

    goto :goto_0
.end method

.method private setInstallerState(ILandroid/net/Uri;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/net/Uri;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInstallerState(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showDownloadNotification(ILjava/lang/String;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowErrorNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/utils/Notifier;->showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private startActivation(Lcom/google/android/finsky/appstate/AppStates$AppState;)Z
    .locals 4
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    new-instance v1, Lcom/google/android/finsky/receivers/InstallerTask$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$4;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/receivers/InstallerTask$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/16 v3, 0x3c

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v2, p1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v3, 0x37

    invoke-direct {p0, v3, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    new-instance v3, Lcom/google/android/finsky/receivers/InstallerTask$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask$6;-><init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/receivers/InstallerTask$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startInstaller(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
    .locals 23
    .param p1    # Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/receivers/InstallerTask;->startActivation(Lcom/google/android/finsky/appstate/AppStates$AppState;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v20

    const/4 v2, 0x5

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    const-string v2, "Can\'t find main obb file for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v4, 0x38f

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/16 v2, 0x38f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v20

    const/4 v2, 0x5

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    const-string v2, "Can\'t find patch obb file for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/16 v4, 0x390

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/16 v2, 0x390

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v21

    iget-wide v0, v15, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    move-wide/from16 v17, v0

    iget-object v0, v15, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mIsUpdate:Z

    iget-object v2, v15, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-eqz v2, :cond_4

    const/16 v3, 0x6b

    :goto_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowProgress:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowErrorNotifications:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;

    move-result-object v11

    iget-boolean v12, v15, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    iget-object v14, v15, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    move-object/from16 v4, v22

    move-object/from16 v5, v21

    move-wide/from16 v6, v17

    move-object/from16 v8, v16

    invoke-static/range {v4 .. v14}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;)V

    const/16 v2, 0x3c

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/16 v3, 0x6a

    goto :goto_2
.end method

.method private startNextDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    const/16 v6, 0x386

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v9

    const/16 v0, 0x14

    if-ge v9, v0, :cond_0

    const/16 v9, 0x14

    :cond_0
    const/4 v8, -0x1

    sparse-switch v9, :sswitch_data_0

    :goto_0
    if-ltz v8, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v0, v7}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v8, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->requireExternalStorageOrCancel(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v7

    const/16 v8, 0x14

    goto :goto_0

    :cond_2
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->requireExternalStorageOrCancel(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->generateObbDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v7

    const/16 v8, 0x1e

    goto :goto_0

    :cond_3
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask;->generateDownload(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v7

    const/16 v8, 0x28

    goto :goto_0

    :cond_4
    const-string v0, "Unexpected download start states for %s: %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    invoke-direct {p0, v6, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x28 -> :sswitch_2
    .end sparse-switch
.end method

.method private tryRestartWithoutPatch()Z
    .locals 6

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v0

    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x5

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    const/16 v5, 0x28

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    :cond_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_0

    const/16 v0, 0x398

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v0, :cond_1

    const/16 v0, 0x399

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/google/android/finsky/api/DfeServerError;

    if-eqz v0, :cond_2

    const/16 v0, 0x39a

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_3

    const/16 v0, 0x39b

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_4

    const/16 v0, 0x39c

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_5

    const/16 v0, 0x39d

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_6

    const/16 v0, 0x39e

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_7

    const/16 v0, 0x39f

    goto :goto_0

    :cond_7
    const/16 v0, 0x3a0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_1

    const-string v1, "Cannot cancel installing %s - too late"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->cancelCleanup(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_0
.end method

.method public getAppData()Lcom/google/android/finsky/analytics/PlayStore$AppData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    return-object v0
.end method

.method public getProgress()Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    .locals 7

    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask$7;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    iget-wide v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkSize:J

    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    add-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainSize:J

    add-long/2addr v4, v0

    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    add-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchSize:J

    add-long/2addr v4, v0

    new-instance v0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    iget v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadStatus:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;-><init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/receivers/InstallerTask;->PROGRESS_INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getState()Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->DOWNLOADING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    :goto_0
    return-object v1

    :sswitch_0
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x37 -> :sswitch_1
        0x3c -> :sswitch_1
        0x46 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/download/Download;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    check-cast v3, Lcom/google/android/finsky/download/InternalDownload;

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v10, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    const/4 v6, -0x1

    const/16 v1, 0x388

    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v7

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    if-ltz v6, :cond_4

    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    :goto_2
    return-void

    :cond_1
    move v5, v8

    goto :goto_0

    :sswitch_0
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMain:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v6, 0x1e

    goto :goto_1

    :cond_2
    const-string v9, "Can\'t finalize main obb file for %s"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x38f

    goto :goto_1

    :sswitch_1
    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatch:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v6, 0x28

    goto :goto_1

    :cond_3
    const-string v9, "Can\'t finalize patch obb file for %s"

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x390

    goto :goto_1

    :sswitch_2
    if-nez v4, :cond_0

    const/16 v6, 0x32

    goto :goto_1

    :cond_4
    const-string v9, "Unexpected download completion states for %s: %d %d %b %b"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v7, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v7, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2d -> :sswitch_2
    .end sparse-switch
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/download/Download;
    .param p2    # I

    const/4 v2, 0x0

    const/16 v3, 0x1a4

    if-eq p2, v3, :cond_0

    const/16 v3, 0x1f4

    if-lt p2, v3, :cond_1

    const/16 v3, 0x257

    if-gt p2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    const/16 v2, 0xc6

    if-ne p2, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mShowErrorNotifications:Z

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showExternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v2, p2}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/download/Download;
    .param p2    # Lcom/google/android/finsky/download/DownloadProgress;

    const-wide/16 v4, 0x0

    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbPatchCompleted:J

    :cond_0
    :goto_0
    iget v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iput v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadStatus:I

    sget-object v2, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    return-void

    :cond_1
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mObbMainCompleted:J

    goto :goto_0

    :cond_2
    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mApkCompleted:J

    iget-wide v2, p2, Lcom/google/android/finsky/download/DownloadProgress;->bytesCompleted:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFirstDownloadMs(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/download/Download;

    const/16 v9, 0x387

    const/4 v8, 0x0

    move-object v1, p1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    const/4 v2, -0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    :goto_1
    return-void

    :sswitch_0
    const/16 v2, 0x19

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x23

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x2d

    goto :goto_0

    :cond_0
    const-string v4, "Unexpected download start states for %s: %d %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v4, 0x0

    invoke-direct {p0, v9, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1e -> :sswitch_1
        0x23 -> :sswitch_1
        0x28 -> :sswitch_2
        0x2d -> :sswitch_2
    .end sparse-switch
.end method

.method public recover(Landroid/net/Uri;I)Z
    .locals 10
    .param p1    # Landroid/net/Uri;
    .param p2    # I

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Recovery of %s skipped because incomplete installerdata"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->populateFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0, v0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :goto_1
    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v4

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v8

    iput v8, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mRecoveredIntoState:I

    sparse-switch v8, :sswitch_data_0

    const-string v0, "Recovery of %s skipped because state= %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z

    move-result v6

    goto :goto_0

    :sswitch_1
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverObb(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;IIIZ)Z

    move-result v6

    goto :goto_0

    :sswitch_2
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverApk(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z

    move-result v6

    goto :goto_0

    :sswitch_3
    const-string v0, "Recovery of %s skipped because state= %d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_0

    :sswitch_4
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/receivers/InstallerTask;->recoverInstalling(Lcom/google/android/finsky/appstate/AppStates$AppState;Landroid/net/Uri;III)Z

    move-result v6

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2d -> :sswitch_2
        0x32 -> :sswitch_4
        0x37 -> :sswitch_3
        0x3c -> :sswitch_4
    .end sparse-switch
.end method

.method releaseInstalledUri(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;

    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, p1}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public start()V
    .locals 11

    const/16 v10, 0x38b

    const/16 v9, 0x389

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "Unexpected missing installer data for %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->populateFields(Lcom/google/android/finsky/appstate/AppStates$AppState;)V

    if-lez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->processDeliveryData(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Z)V

    :cond_2
    const/4 v2, -0x1

    iput v3, p0, Lcom/google/android/finsky/receivers/InstallerTask;->mRecoveredIntoState:I

    sparse-switch v3, :sswitch_data_0

    const-string v4, "Unknown state %d for %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    :goto_1
    :sswitch_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xa

    goto :goto_1

    :sswitch_3
    const-string v4, "Cannot restart %s from downloading state %d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v9}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v4, 0x0

    invoke-direct {p0, v9, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x3c

    goto :goto_1

    :sswitch_5
    const-string v4, "Restarting while applying patch for %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/receivers/InstallerTask;->cancel(Z)V

    sget-object v4, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOAD_ERROR:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    invoke-direct {p0, v4, v10}, Lcom/google/android/finsky/receivers/InstallerTask;->notifyListeners(Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V

    const/4 v4, 0x0

    invoke-direct {p0, v10, v4}, Lcom/google/android/finsky/receivers/InstallerTask;->showDownloadNotification(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const/16 v2, 0x46

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
        0x14 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1e -> :sswitch_2
        0x23 -> :sswitch_3
        0x28 -> :sswitch_2
        0x2d -> :sswitch_3
        0x32 -> :sswitch_4
        0x37 -> :sswitch_5
        0x3c -> :sswitch_6
        0x46 -> :sswitch_6
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    return-object v0
.end method
