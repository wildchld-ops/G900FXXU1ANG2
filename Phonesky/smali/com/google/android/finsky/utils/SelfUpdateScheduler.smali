.class public Lcom/google/android/finsky/utils/SelfUpdateScheduler;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# static fields
.field private static sCertificateHash:Ljava/lang/String;

.field private static sCertificateHashSelfUpdateMD5:Ljava/lang/String;


# instance fields
.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

.field private mMarketVersion:I

.field private mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

.field private mUpdateDownload:Lcom/google/android/finsky/download/Download;

.field private mUpdateInProgress:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueue;I)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/download/DownloadQueue;
    .param p2    # I

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    iput-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iput-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    iput p2, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/SelfUpdateScheduler;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->startSelfUpdateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)Lcom/google/android/finsky/analytics/PlayStore$AppData;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    return-object v0
.end method

.method private static computeClientHashes(Landroid/content/Context;)V
    .locals 8
    .param p0    # Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHashSelfUpdateMD5:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHash:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v5, "Unable to find package info for %s - %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "signature-hash-NameNotFoundException"

    sput-object v5, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHashSelfUpdateMD5:Ljava/lang/String;

    const-string v5, "certificate-hash-NameNotFoundException"

    sput-object v5, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHash:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getCertificateHash(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHash:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->computeClientHashes(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHash:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCertificateHashSelfUpdateMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHashSelfUpdateMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->computeClientHashes(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->sCertificateHashSelfUpdateMD5:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSelfUpdateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/download/DownloadImpl;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v14}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJLcom/google/android/finsky/download/obb/Obb;ZZ)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void
.end method


# virtual methods
.method public checkForSelfUpdate(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 16
    .param p1    # Lcom/google/android/finsky/protos/Toc$TocResponse;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    if-eqz v1, :cond_0

    const-string v1, "Skipping DFE self-update check as there is an update already queued."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v15, -0x1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    iget-boolean v1, v13, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->hasLatestClientVersionCode:Z

    if-eqz v1, :cond_1

    iget v15, v13, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;->latestClientVersionCode:I

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    if-lt v1, v15, :cond_2

    const-string v1, "Skipping DFE self-update. Local Version [%d] >= Server Version [%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "Starting DFE self-update from local version [%d] to server version [%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateInProgress:Z

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mMarketVersion:I

    iput v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    iput v15, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasVersion:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->systemApp:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasSystemApp:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v12

    invoke-static {v14}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->getCertificateHashSelfUpdateMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v14}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->getCertificateHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v3, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v10, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$1;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)V

    new-instance v11, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;)V

    invoke-interface/range {v1 .. v11}, Lcom/google/android/finsky/api/DfeApi;->delivery(Ljava/lang/String;I[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto/16 :goto_0
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/download/Download;

    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/download/Download;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Self-update ignoring completed download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    iput-object v3, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    if-eqz v0, :cond_1

    const-string v0, "Self-update package Uri was already assigned!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "Self-update ready to be installed, waiting for market to close."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mOnAppExitDeferrer:Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    new-instance v1, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler$3;-><init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler;Lcom/google/android/finsky/download/Download;)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/download/Download;
    .param p2    # I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move v4, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v0, "Self-update failed because of HTTP error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/download/Download;

    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/download/Download;
    .param p2    # Lcom/google/android/finsky/download/DownloadProgress;

    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/download/Download;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mUpdateDownload:Lcom/google/android/finsky/download/Download;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->mLogAppData:Lcom/google/android/finsky/analytics/PlayStore$AppData;

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    :cond_0
    return-void
.end method
