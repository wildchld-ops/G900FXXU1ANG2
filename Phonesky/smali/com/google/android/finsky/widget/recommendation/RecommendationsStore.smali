.class public Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;
.super Ljava/lang/Object;
.source "RecommendationsStore.java"


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String;

.field private static final sWriteThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/BackgroundThreadFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->CACHE_FILE_PREFIX:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->parseNetworkResponse(Lcom/google/android/finsky/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->sWriteThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static deleteCachedRecommendations(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getBitmap(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/widget/recommendation/Recommendation;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/finsky/widget/recommendation/Recommendation;->getImageUrl(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-array v0, v9, [Landroid/graphics/Bitmap;

    new-instance v5, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;

    invoke-direct {v5, v0, v3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;-><init>([Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v4, v5, v8, p2}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v0, v8

    :cond_0
    :goto_0
    aget-object v5, v0, v8

    return-object v5

    :cond_1
    :try_start_0
    sget-object v5, Lcom/google/android/finsky/config/G;->recommendationsFetchTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Timed out while fetching %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Interrupted while fetching %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getCacheFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "recs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->CACHE_FILE_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getRecommendations(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getCacheFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelUtils;->readFromDisk(Ljava/io/File;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->removeExpiredRecommendations()I

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->loadDocumentsFromNetwork(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v2

    :try_start_0
    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/ParcelUtils;->writeToDisk(Ljava/io/File;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v3, "Unable to cache recs for %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getRecommendationsOrShowError(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;IILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p4}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecommendations(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {p0, p3, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "Error loading recs widget: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, p3, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v3, "Error loading recs widget: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f090143

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, p3, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v3, "Error loading recs widget: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f090144

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, p3, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const v3, 0x7f090145

    :try_start_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, p3, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-static {p0, p3, v1}, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;->showError(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public static getRecsWidgetUrl(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->widgetUrlsByBackend:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static loadDocumentsFromNetwork(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "No recs widget url provided in loadDocsFromNetwork()."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No recs url provided"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1, v1, v0, v0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    sget-object v3, Lcom/google/android/finsky/config/G;->recommendationsFetchTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-static {v2, p2, p3}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->parseNetworkResponse(Lcom/google/android/finsky/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    move-result-object v3

    return-object v3
.end method

.method private static parseNetworkResponse(Lcom/google/android/finsky/protos/DocList$ListResponse;ILcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/widget/recommendation/RecommendationList;
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v10, v10

    if-nez v10, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v10, p0, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v10, v10, v9

    invoke-direct {v2, v10}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    new-instance v6, Lcom/google/android/finsky/widget/recommendation/RecommendationList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v10

    if-ne v10, v8, :cond_2

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v1

    iget-object v10, v1, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {v7, v10}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v10

    if-eqz v10, :cond_5

    move v5, v8

    :cond_2
    :goto_1
    invoke-static {v3, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v5, :cond_6

    :cond_3
    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "Already own %s, skipping"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v5, v9

    goto :goto_1

    :cond_6
    new-instance v10, Lcom/google/android/finsky/widget/recommendation/Recommendation;

    invoke-direct {v10, v3}, Lcom/google/android/finsky/widget/recommendation/Recommendation;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v6, v10}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->add(Lcom/google/android/finsky/widget/recommendation/Recommendation;)Z

    goto :goto_2
.end method

.method public static performBackFill(Lcom/google/android/finsky/api/DfeApi;Landroid/content/Context;Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/finsky/widget/recommendation/RecommendationList;->getBackendId()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getRecsWidgetUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "No recs widget url provided in performBackFill()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$1;-><init>(Lcom/google/android/finsky/widget/recommendation/RecommendationList;Lcom/google/android/finsky/library/Library;Landroid/content/Context;I)V

    new-instance v2, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$2;

    invoke-direct {v2}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$2;-><init>()V

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method
