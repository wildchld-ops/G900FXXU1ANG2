.class public Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
.super Ljava/lang/Object;
.source "WriteThroughKeyValueStore.java"

# interfaces
.implements Lcom/google/android/finsky/utils/persistence/KeyValueStore;


# static fields
.field private static final sWriteThread:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

.field private mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mOnCompleteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/BackgroundThreadFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Lcom/google/android/finsky/utils/persistence/KeyValueStore;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/util/Map;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    .param p1    # Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->handleDataLoaded(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ensureOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to access data off of the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureReadyAndOnMainThread()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to access data before initializing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureOnMainThread()V

    return-void
.end method

.method private fetchAllFromBackingStoreAsync()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private handleDataLoaded(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$1;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public fetchAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    iget-object v3, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0
.end method

.method public forceSynchronousLoad()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mOnCompleteListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->fetchAllFromBackingStoreAsync()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->ensureReadyAndOnMainThread()V

    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mDataMap:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$2;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v2, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
