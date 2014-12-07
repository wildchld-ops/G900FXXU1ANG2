.class public Lcom/google/android/finsky/library/Libraries;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/Libraries$Listener;
    }
.end annotation


# instance fields
.field private final mAccounts:Lcom/google/android/finsky/library/Accounts;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mCurrentAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/library/AccountLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private mLibraryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/AccountLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/Libraries$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadHasBeenCalled:Z

.field private mLoadedAccountHash:I

.field private final mLoadingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadHasBeenCalled:Z

    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    iput-object p2, p0, Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    iput-object p4, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/library/Libraries;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->fireAllLibrariesLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/library/Libraries;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->runAndClearLoadingCallbacks()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/finsky/library/Libraries;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/SQLiteLibrary;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/library/Libraries;)Lcom/google/android/finsky/library/Accounts;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/Libraries;->notifyLibraryChanged(Lcom/google/android/finsky/library/AccountLibrary;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/library/Libraries;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private computeAccountHash(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method private fireAllLibrariesLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/Libraries$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/Libraries$6;-><init>(Lcom/google/android/finsky/library/Libraries;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyLibraryChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/Libraries$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/library/Libraries$5;-><init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized runAndClearLoadingCallbacks()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private setupAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/library/AccountLibrary;

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/library/AccountLibrary;-><init>(Landroid/accounts/Account;Landroid/os/Handler;)V

    new-instance v1, Lcom/google/android/finsky/library/Libraries$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/library/Libraries$4;-><init>(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/library/AccountLibrary;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/AccountLibrary;->addListener(Lcom/google/android/finsky/library/AccountLibrary$Listener;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blockingLoad()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/google/android/finsky/library/Libraries$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/library/Libraries$1;-><init>(Lcom/google/android/finsky/library/Libraries;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized cleanup()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/Libraries$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/Libraries$3;-><init>(Lcom/google/android/finsky/library/Libraries;)V

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

.method public declared-synchronized contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AccountLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    monitor-exit p0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public dumpState()V
    .locals 4

    const-string v2, "FinskyLibrary"

    const-string v3, "| Libraries {"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    const-string v2, "|   "

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/library/AccountLibrary;->dumpState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "FinskyLibrary"

    const-string v3, "| }"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AccountLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getAccountLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/AccountLibrary;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/library/LibraryAppEntry;->hasMatchingCertificateHash([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getAppOwners(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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

.method public declared-synchronized getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Lcom/google/android/finsky/library/LibraryAppEntry;->hasMatchingCertificateHash([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    :cond_0
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_1
    monitor-exit p0

    return-object v5

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized hasSubscriptions()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    monitor-exit p0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isLoaded()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadHasBeenCalled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v1}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/library/Libraries;->computeAccountHash(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/finsky/library/LibraryEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/Runnable;)V
    .locals 13

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v0}, Lcom/google/android/finsky/library/Accounts;->getAccounts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/library/Libraries;->computeAccountHash(Ljava/util/List;)I

    move-result v5

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    if-nez v8, :cond_3

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    if-eqz v8, :cond_5

    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    const-string v0, "Unloading AccountLibrary for account: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v11

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mCurrentAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/google/android/finsky/library/Libraries;->setupAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->fireAllLibrariesLoaded()V

    invoke-direct {p0}, Lcom/google/android/finsky/library/Libraries;->runAndClearLoadingCallbacks()V

    iput v5, p0, Lcom/google/android/finsky/library/Libraries;->mLoadedAccountHash:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadHasBeenCalled:Z

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mLibraries:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/library/AccountLibrary;

    new-instance v10, Lcom/google/android/finsky/library/LibraryLoader;

    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    iget-object v1, p0, Lcom/google/android/finsky/library/Libraries;->mNotificationHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/google/android/finsky/library/Libraries;->mBackgroundHandler:Landroid/os/Handler;

    invoke-direct {v10, v0, v9, v1, v11}, Lcom/google/android/finsky/library/LibraryLoader;-><init>(Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;)V

    new-instance v0, Lcom/google/android/finsky/library/Libraries$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/library/Libraries$2;-><init>(Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;[ILjava/util/List;I)V

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/library/LibraryLoader;->load(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/library/Libraries;->mLoadHasBeenCalled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 5

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/library/Libraries;->mLibraryList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
