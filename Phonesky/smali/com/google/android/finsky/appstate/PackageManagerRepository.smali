.class public Lcom/google/android/finsky/appstate/PackageManagerRepository;
.super Ljava/lang/Object;
.source "PackageManagerRepository.java"

# interfaces
.implements Lcom/google/android/finsky/appstate/PackageStateRepository;
.implements Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;


# static fields
.field private static final NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    const/4 v7, -0x1

    move-object v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;-><init>(Ljava/lang/String;[Ljava/lang/String;ZZZZIZ)V

    sput-object v0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
    .param p3    # Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageStates:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    :cond_0
    return-void
.end method

.method private static computeCertificateHashes(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createPackageState(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .locals 13
    .param p1    # Landroid/content/pm/PackageInfo;

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    iget v7, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v3, v11

    :goto_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v4, v11

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_2

    move v5, v11

    :goto_2
    new-instance v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->computeCertificateHashes(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->isActiveDeviceAdmin(Ljava/lang/String;)Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;-><init>(Ljava/lang/String;[Ljava/lang/String;ZZZZIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :cond_0
    move v3, v12

    goto :goto_0

    :cond_1
    move v4, v12

    goto :goto_1

    :cond_2
    move v5, v12

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    if-eq v10, v0, :cond_4

    const/4 v0, 0x4

    if-ne v10, v0, :cond_6

    :cond_4
    move v6, v11

    :goto_4
    if-nez v6, :cond_5

    const/4 v0, 0x2

    if-ne v10, v0, :cond_7

    :cond_5
    move v5, v11

    :goto_5
    goto :goto_2

    :cond_6
    move v6, v12

    goto :goto_4

    :cond_7
    move v5, v12

    goto :goto_5

    :catch_0
    move-exception v9

    const-string v0, "Package %s not installed"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    goto :goto_3
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private refreshEntry(Ljava/lang/String;Z)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageStates:Ljava/util/Map;

    sget-object v4, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->createPackageState(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageStates:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageStates:Ljava/util/Map;

    sget-object v4, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    goto :goto_0
.end method


# virtual methods
.method public canLaunch(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .locals 2
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->refreshEntry(Ljava/lang/String;Z)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllBlocking()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    iget-object v5, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->createPackageState(Landroid/content/pm/PackageInfo;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    sget-object v5, Lcom/google/android/finsky/appstate/PackageManagerRepository;->NOT_INSTALLED_MARKER:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eq v3, v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/PackageManagerRepository;->mPackageStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->refreshEntry(Ljava/lang/String;Z)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    return-void
.end method

.method public onPackageAvailabilityChanged([Ljava/lang/String;Z)V
    .locals 5
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->refreshEntry(Ljava/lang/String;Z)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->refreshEntry(Ljava/lang/String;Z)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    return-void
.end method

.method public onPackageFirstLaunch(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/appstate/PackageManagerRepository;->refreshEntry(Ljava/lang/String;Z)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
