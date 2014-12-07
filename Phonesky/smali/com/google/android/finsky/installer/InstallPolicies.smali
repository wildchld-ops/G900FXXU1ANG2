.class public Lcom/google/android/finsky/installer/InstallPolicies;
.super Ljava/lang/Object;
.source "InstallPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;
    }
.end annotation


# static fields
.field private static final DEBUG_FORCE_LARGE_SIZE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_FORCE_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mMaxBytesOverMobile:J

.field private mMaxBytesOverMobileRecommended:J

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/installer/InstallPolicies;->DEBUG_FORCE_LARGE_SIZE:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/installer/InstallPolicies;->DEBUG_FORCE_PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/installer/InstallPolicies;->setMobileDownloadThresholds(Landroid/content/ContentResolver;)V

    iput-object p2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p4, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-void
.end method

.method private containsDangerousNewPermissions(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz p2, :cond_0

    move-object v0, p2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v7, v0, v1

    :try_start_0
    iget-object v11, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v11, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x1000

    invoke-virtual {v11, p1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_1

    aget-object v7, v0, v1

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    iget v11, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v11, v9, :cond_3

    move v2, v9

    :goto_3
    if-eqz v2, :cond_2

    iget-object v11, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :goto_4
    return v9

    :cond_3
    move v2, v10

    goto :goto_3

    :cond_4
    sget-object v11, Lcom/google/android/finsky/installer/InstallPolicies;->DEBUG_FORCE_PERMISSIONS:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "Forcing true for new permissions for package %s"

    new-array v12, v9, [Ljava/lang/Object;

    aput-object p1, v12, v10

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    move v9, v10

    goto :goto_4

    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method private getAutoUpdateSizeLimit()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private getUpdateWarningsForDocument(Lcom/google/android/finsky/api/model/Document;JLjava/lang/String;Lcom/google/android/finsky/protos/DocDetails$AppDetails;Z)Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v4, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;

    invoke-direct {v4}, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;-><init>()V

    sget-object v5, Lcom/google/android/finsky/installer/InstallPolicies;->DEBUG_FORCE_LARGE_SIZE:Ljava/util/List;

    invoke-interface {v5, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Forcing true for size limit for package %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p4, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v7, v4, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->largeUpdate:Z

    :cond_0
    iget-boolean v5, p5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    if-eqz v5, :cond_4

    iget-wide v2, p5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    :goto_0
    cmp-long v5, v2, p2

    if-ltz v5, :cond_1

    iput-boolean v7, v4, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->largeUpdate:Z

    :cond_1
    :try_start_0
    iget-object v5, p5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    invoke-direct {p0, p4, v5}, Lcom/google/android/finsky/installer/InstallPolicies;->containsDangerousNewPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->newPermissions:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-eqz p6, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v6, p5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v5, v6, :cond_3

    iput-boolean v7, v4, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->autoUpdateDisabled:Z

    :cond_3
    return-object v4

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Asset %s marked installed but not in pkg mgr"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p4, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setMobileDownloadThresholds(Landroid/content/ContentResolver;)V
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v2, Lcom/google/android/finsky/config/G;->downloadBytesOverMobileMaximum:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    sget-object v2, Lcom/google/android/finsky/config/G;->downloadBytesOverMobileRecommended:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    :try_start_0
    const-string v2, "download_manager_max_bytes_over_mobile"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    iget-wide v4, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "Library not loaded."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    iget v2, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iget-boolean v5, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v5, :cond_0

    iget-object v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    if-le v2, v0, :cond_0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {p2, v5, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Cannot update unavailable app: pkg=%s,restriction=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public getApplicationsEligibleForAutoUpdate(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Library not loaded."

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    :cond_0
    return-object v8

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/installer/InstallPolicies;->getAutoUpdateSizeLimit()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    iget-object v4, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v0, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "Server thinks we have an asset that we don\'t have : %s"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v4, v11, v12

    invoke-static {v0, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget v0, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iget-object v11, v7, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v11, v11, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-le v0, v11, :cond_2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/installer/InstallPolicies;->getUpdateWarningsForDocument(Lcom/google/android/finsky/api/model/Document;JLjava/lang/String;Lcom/google/android/finsky/protos/DocDetails$AppDetails;Z)Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->warningRequired()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getApplicationsEligibleForNewUpdateNotification(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v7, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    iget-object v6, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastNotifiedVersion()I

    move-result v7

    if-le v6, v7, :cond_0

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getApplicationsWithUpdates(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    iget-object v3, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/google/android/finsky/installer/InstallPolicies;->canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAppsThatRequireUpdateWarnings(Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/installer/InstallPolicies;->getAutoUpdateSizeLimit()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/installer/InstallPolicies;->getUpdateWarningsForDocument(Lcom/google/android/finsky/api/model/Document;JLjava/lang/String;Lcom/google/android/finsky/protos/DocDetails$AppDetails;Z)Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->warningRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method public getMaxBytesOverMobile()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    return-wide v0
.end method

.method public getMaxBytesOverMobileRecommended()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    return-wide v0
.end method

.method public getUpdateWarnings(Ljava/util/List;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/installer/InstallPolicies;->getAutoUpdateSizeLimit()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/installer/InstallPolicies;->getUpdateWarningsForDocument(Lcom/google/android/finsky/api/model/Document;JLjava/lang/String;Lcom/google/android/finsky/protos/DocDetails$AppDetails;Z)Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method public hasMobileNetwork()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasNetwork()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobileNetwork()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiNetwork()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
