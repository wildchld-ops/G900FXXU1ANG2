.class Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;
.super Ljava/lang/Object;
.source "FetchConsumptionDataService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/FetchConsumptionDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumptionAppServiceConn"
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mService:Lcom/google/android/play/IUserContentService;

.field final synthetic this$0:Lcom/google/android/finsky/services/FetchConsumptionDataService;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/services/FetchConsumptionDataService;ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .param p2    # I
    .param p3    # Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->this$0:Lcom/google/android/finsky/services/FetchConsumptionDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    iput-object p3, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;Lcom/google/android/play/IUserContentService;)Lcom/google/android/play/IUserContentService;
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;
    .param p1    # Lcom/google/android/play/IUserContentService;

    iput-object p1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    invoke-direct {p0}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->getDataFromService()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0    # Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;

    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private getDataFromService()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-interface {v6, v7, v8}, Lcom/google/android/play/IUserContentService;->getDocuments(II)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ltz v6, :cond_0

    const-string v6, "retrieved %d documents from [%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->get()Lcom/google/android/finsky/services/ConsumptionAppDataCache;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->this$0:Lcom/google/android/finsky/services/FetchConsumptionDataService;

    iget v6, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-virtual {v2, v1, v6, v5}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->setConsumptionAppData(Landroid/content/Context;ILjava/util/List;)V

    iget v6, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v6, v5}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->createFromBundles(ILjava/util/List;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v6

    invoke-static {v1, v6}, Lcom/google/android/finsky/services/ConsumptionAppDataCache;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-static {v0, v3}, Lcom/google/android/finsky/utils/ParcelUtils;->writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v4

    :try_start_2
    const-string v6, "Failed to cache %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v6, "Exception during data fetch: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    const-string v6, "Error fetching data from service for backend=[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mBackendId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    # getter for: Lcom/google/android/finsky/services/FetchConsumptionDataService;->sFetchThread:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/google/android/finsky/services/FetchConsumptionDataService;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn$1;-><init>(Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mService:Lcom/google/android/play/IUserContentService;

    iget-object v0, p0, Lcom/google/android/finsky/services/FetchConsumptionDataService$ConsumptionAppServiceConn;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
