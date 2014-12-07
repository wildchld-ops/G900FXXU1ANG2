.class public Lcom/google/android/finsky/appstate/AppStatesReplicator;
.super Ljava/lang/Object;
.source "AppStatesReplicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    }
.end annotation


# instance fields
.field private final mAccounts:Lcom/google/android/finsky/library/Accounts;

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mReplicationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendingApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/vending/remoting/api/VendingApiFactory;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mVendingApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    iput-object p5, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/appstate/AppStatesReplicator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/appstate/AppStatesReplicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->internalReplicate()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/appstate/AppStatesReplicator;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V

    return-void
.end method

.method private static getAccountList(Ljava/util/Map;Landroid/accounts/Account;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;>;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private declared-synchronized handleContentSyncResponse(III)V
    .locals 4

    monitor-enter p0

    if-ne p3, p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mNotificationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/google/android/finsky/appstate/AppStatesReplicator$5;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method private internalReplicate()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v3}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v29

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->computeConfigurationHash(Ljava/util/List;Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->getAllBlocking()Ljava/util/Collection;

    move-result-object v30

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v34

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->bucketAppsByOwner(Ljava/util/Collection;Ljava/util/Map;Ljava/util/List;)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->computeHash(Ljava/util/Collection;I)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    aput v13, v19, v3

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    aput v13, v20, v3

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v26

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v27

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_0
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/accounts/Account;

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v9, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->computeHash(Ljava/util/Collection;I)I

    move-result v7

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->replicatedAccountAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v17

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->replicatedSystemAppsHash:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->makeContentSyncRequest(IILjava/util/List;IILjava/util/List;IJ)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v33

    if-nez v33, :cond_1

    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "No installation states replication required: account=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    invoke-static {v3, v13}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Replicating installation states: account=%s, numSystemApps=%d, numAccountApps=%d, numSideloaded=%d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, v33

    iget v0, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v14

    invoke-static {v3, v13}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;

    move-object/from16 v14, p0

    move/from16 v16, v4

    move/from16 v18, v7

    invoke-direct/range {v13 .. v21}, Lcom/google/android/finsky/appstate/AppStatesReplicator$3;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;ILcom/google/android/finsky/config/PreferenceFile$SharedPreference;I[I[ILjava/util/List;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v22, p0

    move-object/from16 v23, v21

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    invoke-direct/range {v22 .. v27}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->performRequests(Ljava/util/List;[I[ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private makeInstallState(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;J)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;-><init>()V

    iget-object v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v1, v2}, Lcom/google/android/finsky/local/AssetUtils;->makeAssetId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    iput-wide p2, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    iget-object v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    iget v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v1, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    return-object v0
.end method

.method private makeSystemApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;-><init>()V

    iget-object v2, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName:Z

    iget v2, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v2, v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    iput-boolean v3, v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    iget-object v2, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    return-object v1
.end method

.method private performRequests(Ljava/util/List;[I[ILjava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;[I[I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->handleContentSyncResponse(III)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    sget-boolean v14, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "ContentSyncRequestProto for account %s:"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v14}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v12, v5, v7

    const-string v14, ": %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/volley/Response$Listener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mVendingApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    iget-object v15, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/android/vending/remoting/api/VendingApiFactory;->getApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v13

    new-instance v14, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator$4;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;[ILjava/util/List;[I)V

    invoke-virtual {v13, v11, v9, v14}, Lcom/google/android/vending/remoting/api/VendingApi;->syncContent(Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method bucketAppsByOwner(Ljava/util/Collection;Ljava/util/Map;Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;)I"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Buckets must be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    if-eqz v8, :cond_5

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v9, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    iget-object v10, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    invoke-static {p2, v3}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->getAccountList(Ljava/util/Map;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v8, :cond_2

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v7}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-interface {p2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return v6
.end method

.method computeConfigurationHash(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method computeHash(Ljava/util/Collection;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, p2

    return v0
.end method

.method public load(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/appstate/AppStatesReplicator$1;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    return-void
.end method

.method makeContentSyncRequest(IILjava/util/List;IILjava/util/List;IJ)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;",
            ">;IJ)",
            "Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;"
        }
    .end annotation

    if-eq p1, p2, :cond_2

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_0

    move/from16 v0, p5

    if-eq p4, v0, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_1

    if-eqz v4, :cond_6

    :cond_1
    new-instance v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v8}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    new-array v9, v5, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    iput-object v9, v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_4

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v9, v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-wide/from16 v0, p8

    invoke-direct {p0, v7, v0, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->makeInstallState(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;J)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-result-object v10

    aput-object v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    iput-object v9, v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_5

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v9, v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {p0, v7}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->makeSystemApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    move-result-object v10

    aput-object v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, p7

    iput v0, v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    :goto_4
    return-object v8

    :cond_6
    const/4 v8, 0x0

    goto :goto_4
.end method

.method public declared-synchronized replicate(Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mReplicationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStatesReplicator;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/AppStatesReplicator$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/appstate/AppStatesReplicator$2;-><init>(Lcom/google/android/finsky/appstate/AppStatesReplicator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
