.class public Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;
.super Ljava/lang/Object;
.source "BatchedImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;
    }
.end annotation


# static fields
.field private static final sFetchThread:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private volatile mPreviousBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessingThread:Ljava/lang/Thread;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBitmapMemory:I

.field private final mWaitLock:Ljava/util/concurrent/Semaphore;

.field private final mWidgetCache:Lcom/android/volley/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/BackgroundThreadFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->sFetchThread:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/volley/Cache;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWaitLock:Ljava/util/concurrent/Semaphore;

    iput v1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mTotalBitmapMemory:I

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWidgetCache:Lcom/android/volley/Cache;

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const-string v0, "BatchedImageLoader.mProcessingThread"

    new-instance v1, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$1;-><init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mProcessingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/ImageBatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->handleBatchedRequest(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWaitLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->loadFileFromUri(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)[B

    move-result-object v0

    return-object v0
.end method

.method private static findBestSampleSize(IIII)I
    .locals 12

    const/high16 v11, 0x40000000

    int-to-double v7, p0

    int-to-double v9, p2

    div-double v5, v7, v9

    int-to-double v7, p1

    int-to-double v9, p3

    div-double v0, v7, v9

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/high16 v2, 0x3f800000

    :goto_0
    mul-float v7, v2, v11

    float-to-double v7, v7

    cmpg-double v7, v7, v3

    if-gtz v7, :cond_0

    mul-float/2addr v2, v11

    goto :goto_0

    :cond_0
    float-to-int v7, v2

    return v7
.end method

.method private getScaledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 12

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p2, :cond_2

    if-ge v0, p3, :cond_3

    :cond_2
    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    :cond_3
    int-to-float v10, v1

    int-to-float v11, v0

    div-float v2, v10, v11

    int-to-float v10, p2

    div-float/2addr v10, v2

    float-to-int v6, v10

    int-to-float v10, p3

    mul-float/2addr v10, v2

    float-to-int v7, v10

    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-le v6, p3, :cond_5

    move v5, p2

    move v4, v6

    :goto_1
    invoke-static {v1, v0, v5, v4}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->findBestSampleSize(IIII)I

    move-result v10

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, v5, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, v4, :cond_6

    :cond_4
    const/4 v10, 0x1

    invoke-static {v9, v5, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_5
    move v5, v7

    move v4, p3

    goto :goto_1

    :cond_6
    move-object v8, v9

    goto :goto_0
.end method

.method private handleBatchedRequest(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mTotalBitmapMemory:I

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mPreviousBitmaps:Ljava/util/Map;

    if-eqz v13, :cond_3

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->urisToLoad:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mPreviousBitmaps:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    iget-object v13, v12, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    iget v14, v12, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    iget v15, v12, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    invoke-virtual {v8, v13, v14, v15}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->satisfies(Landroid/net/Uri;II)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mPreviousBitmaps:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v13

    add-int/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mPreviousBitmaps:Ljava/util/Map;

    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->urisToLoad:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    const/4 v1, 0x0

    iget-object v11, v12, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    const-string v13, "http"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "https"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->loadFromBitmapLoader(Ljava/util/Map;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020018

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->loadFromProvider(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_7
    sget-boolean v13, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v13, :cond_8

    const-string v13, "Loaded %s images [%s k] for backend=[%s] (%s were reused, %s k)"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->urisToLoad:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int v16, v16, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mTotalBitmapMemory:I

    move/from16 v16, v0

    add-int v16, v16, v10

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->backendId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    div-int/lit16 v0, v10, 0x400

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/finsky/widget/consumption/ImageBatch;->callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

    move-object v7, v6

    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v7}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;-><init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;Ljava/util/Map;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWaitLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mPreviousBitmaps:Ljava/util/Map;

    return-void
.end method

.method private loadFileFromUri(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)[B
    .locals 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v7, 0x3

    if-ge v0, v7, :cond_3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "w"

    iget v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "h"

    iget v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v5}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string v7, "IOException parsing [%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v7

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v7

    :catch_3
    move-exception v8

    goto :goto_3

    :cond_3
    return-object v3

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v4, v5

    goto :goto_1
.end method

.method private loadFromBitmapLoader(Ljava/util/Map;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/Bitmap;

    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p2, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;

    invoke-direct {v5, p0, v0, v2}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;-><init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;[Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    iget v6, p2, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    iget v7, p2, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v0, v8

    :goto_0
    aget-object v3, v0, v8

    return-object v3

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto :goto_0
.end method

.method private loadFromProvider(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWidgetCache:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/volley/Cache$Entry;->data:[B

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-eqz v5, :cond_3

    iget v7, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->width:I

    iget v8, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->height:I

    invoke-direct {p0, v5, v7, v8}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v7, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mTotalBitmapMemory:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mTotalBitmapMemory:I

    :goto_1
    return-object v1

    :cond_1
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;

    invoke-direct {v7, p0, p1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;-><init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)V

    invoke-direct {v6, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    :try_start_0
    sget-object v7, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->sFetchThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-object v7, Lcom/google/android/finsky/config/G;->consumptionAppImageTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v5, v0

    if-eqz v5, :cond_0

    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    iput-object v5, v2, Lcom/android/volley/Cache$Entry;->data:[B

    const-wide v7, 0x7fffffffffffffffL

    iput-wide v7, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-object v7, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWidgetCache:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v7, "Timed out while waiting for %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v7, "Interrupted while loading %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v3

    const-string v7, "ExecutionException while loading %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v7, "Failed to decode bitmap %s"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v7, "File was not loaded for uri=[%s]"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;->uri:Landroid/net/Uri;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v0, v4, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v3
.end method


# virtual methods
.method public enqueue(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCachedBitmaps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mPreviousBitmaps:Ljava/util/Map;

    return-object v0
.end method
