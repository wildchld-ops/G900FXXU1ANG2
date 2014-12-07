.class Lcom/google/android/finsky/download/DownloadProgressManager;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;
    }
.end annotation


# static fields
.field private static volatile sDownloadProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandlerThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    const-string v0, "Download progress manager runner"

    invoke-static {v0}, Lcom/google/android/finsky/utils/BackgroundThreadFactory;->createHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/finsky/download/DownloadProgressManager$1;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/download/DownloadProgressManager$1;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager$2;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadProgressManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method private assertOnHandlerThread()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This should only be run on DownloadProgressManager\'s handler thread ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Instead we\'re on thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method private generateDownloadProgressFromCursor(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_1

    const-string v19, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v19, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v19, "total_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v19, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v19, "allowed_network_types"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v19, 0xc3

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_0

    const/16 v7, 0xc4

    :cond_0
    new-instance v2, Lcom/google/android/finsky/download/DownloadProgress;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/download/DownloadProgress;-><init>(JJI)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v16
.end method

.method private static getCachedProgress()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-object v0
.end method

.method private static getUris()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private makeNewCursor()V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriForContentObserver()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string v0, "Download progress cursor null: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private onDownloadProgress()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getUris()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeNewCursor()V

    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/download/DownloadProgressManager;->generateDownloadProgressFromCursor(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    sput-object v1, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getUris()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager$3;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
