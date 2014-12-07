.class public Lcom/google/android/finsky/activities/AppActionAnalyzer;
.super Ljava/lang/Object;
.source "AppActionAnalyzer.java"


# instance fields
.field public certificateHashes:[Ljava/lang/String;

.field public installedVersion:I

.field public isActiveDeviceAdmin:Z

.field public isContinueLaunch:Z

.field public isDisabled:Z

.field public isDisabledByUser:Z

.field public isInstalled:Z

.field public isInstalledOwnedPackage:Z

.field public isInstalledSystemApp:Z

.field public isLaunchable:Z

.field public isRefundable:Z

.field public isUninstallable:Z

.field public isUpdatedSystemApp:Z

.field public refundAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/appstate/AppStates;
    .param p3    # Lcom/google/android/finsky/library/Libraries;

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    const/4 v7, -0x1

    iput v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    sget-object v7, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->certificateHashes:[Ljava/lang/String;

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    iput-object v3, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    invoke-virtual {p2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v7, :cond_1

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    iget-object v6, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v7, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    iget-boolean v7, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    iget-boolean v7, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    iget-boolean v7, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    if-eqz v7, :cond_5

    :cond_0
    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->canLaunch(Ljava/lang/String;)Z

    move-result v2

    iget-boolean v7, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    iget-boolean v7, v6, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    if-eqz v2, :cond_6

    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v7, :cond_6

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    :cond_1
    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v7, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->certificateHashes:[Ljava/lang/String;

    :cond_2
    iget-object v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {p3, p1, v7}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    move v5, v8

    :goto_2
    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    if-nez v1, :cond_9

    :goto_4
    invoke-static {v3, v4}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    if-eqz v7, :cond_a

    move v7, v8

    :goto_5
    iput-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    iget-boolean v7, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v7, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p3, p1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "%s is installed but certificate mistmatch"

    new-array v10, v8, [Ljava/lang/Object;

    aput-object p1, v10, v9

    invoke-static {v7, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_6
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    :cond_4
    return-void

    :cond_5
    move v7, v9

    goto :goto_0

    :cond_6
    move v7, v9

    goto :goto_1

    :cond_7
    move v5, v9

    goto :goto_2

    :cond_8
    move v7, v9

    goto :goto_3

    :cond_9
    iget-object v3, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    goto :goto_4

    :cond_a
    move v7, v9

    goto :goto_5

    :cond_b
    move v8, v9

    goto :goto_6
.end method

.method public static canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 8
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v6

    if-eq v6, v5, :cond_1

    const-string v5, "Method invalid for non-ANDROID_APP docs."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v7

    invoke-direct {v0, v6, v7, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    iget-boolean v6, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v6, :cond_0

    iget-boolean v6, v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-nez v6, :cond_0

    invoke-static {v3, p0}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v2

    sget-object v6, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-ne v2, v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private findAccountInOwners(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-virtual {v1}, Lcom/google/android/finsky/library/LibraryAppEntry;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static findCertificateMatch([Ljava/lang/String;[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;)Z
    .locals 10
    .param p0    # [Ljava/lang/String;
    .param p1    # [Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    const/4 v7, 0x0

    array-length v8, p1

    if-eqz v8, :cond_0

    array-length v8, p0

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v0, p1

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    iget-object v8, v1, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;->certificateHash:[Ljava/lang/String;

    array-length v8, v8

    array-length v9, p0

    if-eq v8, v9, :cond_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_2
    iget-object v8, v1, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;->certificateHash:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_4

    iget-object v8, v1, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;->certificateHash:[Ljava/lang/String;

    aget-object v2, v8, v4

    aget-object v8, p0, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;
    .locals 6
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/accounts/Account;
    .param p2    # Lcom/google/android/finsky/appstate/AppStates;
    .param p3    # Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {p3, p0}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p1, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    move-object p1, v4

    goto :goto_0
.end method

.method private static getRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->internalGetRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static internalGetRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;J)Ljava/lang/String;
    .locals 9
    .param p0    # Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .param p2    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    iget-wide v5, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    iget-wide v7, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    add-long/2addr v7, v1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1
    cmp-long v7, v5, p2

    if-ltz v7, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/library/LibraryAppEntry;->getAccountName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAppDetailsAccount(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/appstate/AppStates;
    .param p4    # Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {p3}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {p4, p1, v4}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountForUpdate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->findAccountInOwners(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->findAccountInOwners(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p2, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->findAccountInOwners(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-virtual {v4}, Lcom/google/android/finsky/library/LibraryAppEntry;->getAccountName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public hasConversionUpdateAvailable(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 5
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->certificateHashes:[Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->findCertificateMatch([Ljava/lang/String;[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget v3, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iget v4, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    if-le v3, v4, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public hasUpdateAvailable(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iget v1, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
