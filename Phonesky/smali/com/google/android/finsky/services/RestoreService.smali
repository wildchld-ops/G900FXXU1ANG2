.class public Lcom/google/android/finsky/services/RestoreService;
.super Landroid/app/Service;
.source "RestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/RestoreService$3;,
        Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;,
        Lcom/google/android/finsky/services/RestoreService$RestoreTracker;,
        Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;,
        Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_SELF_ANDROID_ID:Ljava/lang/Boolean;

.field private static sErrorRetryBlacklist:[I


# instance fields
.field private mAddedInstallerListener:Z

.field private mDebugCountAlreadyInstalled:I

.field private mDebugCountAlreadyOtherAccount:I

.field private mDebugCountAlreadyTracked:I

.field private mDebugCountMaxAttemptsExceeded:I

.field private mDebugCountObbStorage:I

.field private mHandledStartupIntent:Z

.field private mServiceStartId:I

.field private mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/services/RestoreService;->DEBUG_SELF_ANDROID_ID:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/services/RestoreService;I)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->inErrorRetryBlacklist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->getPackageRestoreIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/services/RestoreService;J)J
    .locals 2
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # J

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/services/RestoreService;->jitterDelay(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;J)J
    .locals 2
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # Landroid/content/Intent;
    .param p2    # J

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/services/RestoreService;->setAlarm(Landroid/content/Intent;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/finsky/services/RestoreService;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/finsky/services/RestoreService;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    return p1
.end method

.method static synthetic access$2000(Lcom/google/android/finsky/services/RestoreService;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountObbStorage:I

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/finsky/services/RestoreService;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountObbStorage:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/finsky/services/RestoreService;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyOtherAccount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/google/android/finsky/services/RestoreService;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyOtherAccount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/google/android/finsky/services/RestoreService;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    return v0
.end method

.method static synthetic access$2202(Lcom/google/android/finsky/services/RestoreService;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    return p1
.end method

.method static synthetic access$2300(Lcom/google/android/finsky/services/RestoreService;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountMaxAttemptsExceeded:I

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/finsky/services/RestoreService;I)I
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountMaxAttemptsExceeded:I

    return p1
.end method

.method static synthetic access$2400(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;ILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Lcom/google/android/finsky/receivers/Installer;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/receivers/Installer;

    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Lcom/google/android/finsky/receivers/Installer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/finsky/services/RestoreService;->getKickIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/finsky/services/RestoreService;Lcom/android/volley/VolleyError;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/services/RestoreService;->getRestoreIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/services/RestoreService;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/RestoreService;

    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I

    return v0
.end method

.method private addInstallerListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/services/RestoreService;->mAddedInstallerListener:Z

    if-eqz v0, :cond_0

    const-string v0, "Added installer listener twice"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/RestoreService;->mAddedInstallerListener:Z

    goto :goto_0
.end method

.method private doRetryPackage(Ljava/lang/String;)Z
    .locals 16
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->tryAgainPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-object/from16 v0, p1

    # invokes: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageStatus(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$1800(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    iget v3, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->versionCode:I

    const/4 v4, 0x0

    iget-object v5, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Lcom/google/android/finsky/receivers/Installer;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget v2, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->versionCode:I

    iget-object v3, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    iget-object v4, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->startPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZZ)V

    iget v8, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->versionCode:I

    iget-object v9, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v15, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->title:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "restore"

    move-object/from16 v7, p1

    invoke-interface/range {v6 .. v14}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getKickIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "kick_installer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "restoreservice://kick"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getPackageRestoreIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "package"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "restoreservice"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "restorepackage"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getRestoreIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "aid"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "restoreservice"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "restoreaccount"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)Z
    .locals 14
    .param p1    # Landroid/content/Intent;

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "startup"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/services/RestoreService;->handleStartupIntent()Z

    move-result v10

    :goto_0
    return v10

    :cond_0
    const-string v10, "kick_installer"

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/finsky/receivers/Installer;->startDeferredInstalls()V

    move v10, v11

    goto :goto_0

    :cond_1
    const-string v10, "package"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->handleRetryPackageIntent(Landroid/content/Intent;)Z

    move-result v10

    goto :goto_0

    :cond_2
    const-string v10, "aid"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "Expecting a non-empty aid extra"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v10, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v11

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/google/android/finsky/services/RestoreService;->DEBUG_SELF_ANDROID_ID:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "self"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v10}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const-string v10, "Using own current android-id %s for test restore"

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v2, v13, v11

    invoke-static {v10, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/16 v10, 0x10

    :try_start_0
    invoke-static {v2, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "authAccount"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v10, "Can\'t find restore acct:%s"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-static {v10, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v11

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v10, "Provided aid can\'t be parsed as long"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v10, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v11

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v2, v9}, Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v10, v12

    goto/16 :goto_0

    :cond_7
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v10, v1

    if-gtz v10, :cond_8

    const-string v10, "RestoreService can\'t run - no accounts configured on device!"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v10, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v11

    goto/16 :goto_0

    :cond_8
    move-object v3, v1

    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v0, v3, v5

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v10}, Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private handleRetryPackageIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1    # Landroid/content/Intent;

    const-string v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/services/RestoreService;->doRetryPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private handleStartupIntent()Z
    .locals 14

    iget-boolean v9, p0, Lcom/google/android/finsky/services/RestoreService;->mHandledStartupIntent:Z

    if-eqz v9, :cond_0

    const-string v9, "Redelivery of startup intent - dropping it"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/finsky/services/RestoreService;->mHandledStartupIntent:Z

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$300(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$300(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "Recover fetch for account %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccountStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$300(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;

    iget-object v9, v8, Lcom/google/android/finsky/services/RestoreService$AccountFetchStatus;->androidId:Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    if-eqz v8, :cond_2

    iget-wide v9, v8, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->retryTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    iget-wide v10, v8, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->retryTime:J

    sget-object v9, Lcom/google/android/finsky/config/G;->appRestoreRetryDownloadHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v9}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v6, v10, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-ltz v9, :cond_2

    :cond_4
    const-string v9, "Overdue alarm for %s so retry immediately"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/google/android/finsky/services/RestoreService;->doRetryPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # invokes: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->writePackageStatus(Ljava/lang/String;)V
    invoke-static {v9, v4}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$1800(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/services/RestoreService;->addInstallerListener()V

    goto/16 :goto_0
.end method

.method private inErrorRetryBlacklist(I)Z
    .locals 5
    .param p1    # I

    sget-object v3, Lcom/google/android/finsky/services/RestoreService;->sErrorRetryBlacklist:[I

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/config/G;->appRestoreHttpStatusBlacklist:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->commaUnpackStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/finsky/services/RestoreService;->sErrorRetryBlacklist:[I

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/google/android/finsky/services/RestoreService;->sErrorRetryBlacklist:[I

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/google/android/finsky/services/RestoreService;->sErrorRetryBlacklist:[I

    const/high16 v4, -0x80000000

    aput v4, v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/google/android/finsky/services/RestoreService;->sErrorRetryBlacklist:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/google/android/finsky/services/RestoreService;->sErrorRetryBlacklist:[I

    aget v3, v3, v1

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    :goto_3
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private jitterDelay(J)J
    .locals 10
    .param p1    # J

    const-wide/high16 v4, 0x3fe8000000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L

    div-double/2addr v6, v8

    add-double v0, v4, v6

    long-to-double v4, p1

    mul-double/2addr v4, v0

    double-to-long v2, v4

    return-wide v2
.end method

.method public static recoverRestore(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "startup"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "restoreservice://startup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private restore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->isAccountInFlight(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Skip restore acct:%s already started"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Start restore aid:%s acct:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-virtual {v2, p2, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->startAccount(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    iput-object p1, v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    const-string v2, "1.0"

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    invoke-static {}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->getDeviceConfiguration()Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;-><init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/finsky/services/RestoreService$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/google/android/finsky/services/RestoreService$2;-><init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->restoreApplications(Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public static restoreAccounts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/finsky/services/RestoreService;->getRestoreIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private setAlarm(Landroid/content/Intent;J)J
    .locals 8
    .param p1    # Landroid/content/Intent;
    .param p2    # J

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Alarm intent needs data URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v3, v5, p2

    invoke-static {v1, v7, p1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-wide v3
.end method

.method private shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Lcom/google/android/finsky/receivers/Installer;)Z
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/receivers/Installer;

    new-instance v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;

    invoke-direct {v7}, Lcom/google/android/finsky/analytics/PlayStore$AppData;-><init>()V

    iput p2, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->version:I

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasVersion:Z

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->tryAgainPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountMaxAttemptsExceeded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountMaxAttemptsExceeded:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x71

    const-string v4, "retry-expired"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    if-eqz v10, :cond_1

    iget-object v1, v10, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;->accountName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyOtherAccount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyOtherAccount:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x71

    const-string v4, "other-account"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v1, "Skipping restore of %s v:%d because already restoring for another account"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p5

    invoke-interface {v0, p1}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x71

    const-string v4, "is-tracked"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v1, "Skipping restore of %s because already restoring"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    iget v1, v9, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v1, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->oldVersion:I

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/google/android/finsky/analytics/PlayStore$AppData;->hasOldVersion:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x71

    const-string v4, "already-installed"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v1, "Skipping restore of %s v:%d because v:%d is installed"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v9, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object v1, p3, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-static {p3, p1, v1}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v8

    const/4 v1, 0x1

    invoke-static {p3, p1, v1}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v11

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountObbStorage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountObbStorage:I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/16 v2, 0x71

    const-string v4, "obb-storage"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    const-string v1, "Skipping restore of %s because OBB required but no external storage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const-string v1, "Should attempt restore of %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto/16 :goto_0
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
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;-><init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/RestoreService$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/services/RestoreService;->mAddedInstallerListener:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1    # Landroid/content/Intent;
    .param p2    # I
    .param p3    # I

    iput p3, p0, Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # operator++ for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mStartupRefCount:I
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$1508(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)I

    new-instance v0, Lcom/google/android/finsky/services/RestoreService$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/services/RestoreService$1;-><init>(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->initAccountStore(Landroid/content/Context;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->initPackagesStore(Landroid/content/Context;Ljava/lang/Runnable;)V
    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$1700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Landroid/content/Context;Ljava/lang/Runnable;)V

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

    const/4 v1, 0x3

    return v1
.end method
