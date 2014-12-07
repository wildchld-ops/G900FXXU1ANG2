.class public Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Lcom/google/android/finsky/appstate/InstallerDataStore;


# instance fields
.field private final mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mIsLoaded:Z

.field private mLoadedCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private final mWriteThroughHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/appstate/InstallerDataStore;Lcom/google/android/finsky/appstate/InstallerDataStore;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mLoadedCallbacks:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mNotificationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)Lcom/google/android/finsky/appstate/InstallerDataStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->getAll()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mIsLoaded:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->getAll()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    iget-object v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v3, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mIsLoaded:Z

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mLoadedCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mLoadedCallbacks:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized load(Ljava/lang/Runnable;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mIsLoaded:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mLoadedCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mLoadedCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$1;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccount(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$11;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAccountForUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAccountForUpdate(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$16;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoAcquireTags(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoAcquireTags(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$17;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$4;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$14;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    iget-object v6, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$7;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDesiredVersion(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setDesiredVersion(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$5;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExternalReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setExternalReferrer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFirstDownloadMs(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFirstDownloadMs(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFlags(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFlags(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$13;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInstallerState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setInstallerState(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$8;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastNotifiedVersion(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastUpdateTimestampMs(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastUpdateTimestampMs(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$15;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mInMemoryStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setTitle(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mWriteThroughHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$12;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
