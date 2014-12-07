.class public Lcom/google/android/finsky/appstate/AppStates;
.super Ljava/lang/Object;
.source "AppStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/AppStates$AppState;
    }
.end annotation


# instance fields
.field private final mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

.field private final mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Lcom/google/android/finsky/appstate/PackageStateRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    return-void
.end method

.method private getAllBlocking(Z)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v6}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-interface {v6}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getAllBlocking()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v6, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    new-instance v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v6, v4, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    invoke-direct {v0, v6, v4, v2}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    new-instance v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7, v2}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v5
.end method


# virtual methods
.method public blockingLoad()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->load()V

    return-void
.end method

.method public getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-interface {v2, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v2, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAppsToInstall()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v5

    iget v6, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-le v5, v6, :cond_0

    :cond_1
    new-instance v0, Lcom/google/android/finsky/appstate/AppStates$AppState;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3, v2}, Lcom/google/android/finsky/appstate/AppStates$AppState;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    return-object v0
.end method

.method public getOwnedByAccountBlocking(Lcom/google/android/finsky/library/Libraries;Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/library/Libraries;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {p1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v12

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/finsky/appstate/AppStates;->getAllBlocking(Z)Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/appstate/AppStates$AppState;

    iget-object v10, v5, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v10, :cond_2

    sget-object v6, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    :goto_1
    iget-object v12, v5, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v12, v6}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-virtual {v3}, Lcom/google/android/finsky/library/LibraryAppEntry;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v12, v5, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, v10, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    return-object v11
.end method

.method public getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mPackageManager:Lcom/google/android/finsky/appstate/PackageStateRepository;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates;->mStateStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->load(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
