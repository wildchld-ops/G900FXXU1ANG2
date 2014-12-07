.class public final Lcom/google/android/play/analytics/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/analytics/EventLogger$Configuration;,
        Lcom/google/android/play/analytics/EventLogger$LogSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/analytics/RollingFileStream$WriteCallbacks",
        "<",
        "Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_EXPERIMENTS:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

.field private static final sInstantiatedAccounts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAndroidId:J

.field private final mAppVersion:Ljava/lang/String;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDelayBetweenUploadsMs:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

.field private mLastSentExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

.field private final mLogSource:I

.field private final mLoggingId:Ljava/lang/String;

.field private final mMaxNumberOfRedirects:I

.field private final mMaxUploadSize:J

.field private final mMccmnc:Ljava/lang/String;

.field private final mMinDelayBetweenUploadsMs:J

.field private final mMinImmediateUploadSize:J

.field private volatile mNextAllowedUploadTimeMs:J

.field private final mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

.field private final mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/analytics/RollingFileStream",
            "<",
            "Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;-><init>()V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger;->EMPTY_EXPERIMENTS:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger;->sInstantiatedAccounts:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/analytics/EventLogger$LogSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/google/android/play/analytics/EventLogger$Configuration;Landroid/accounts/Account;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/play/analytics/EventLogger$LogSource;
    .param p5    # Ljava/lang/String;
    .param p6    # J
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Lcom/google/android/play/analytics/EventLogger$Configuration;
    .param p11    # Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/google/android/play/analytics/EventLogger;->sInstantiatedAccounts:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lcom/google/android/play/analytics/EventLogger;->sInstantiatedAccounts:Ljava/util/HashSet;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already instantiated an EventLogger for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/play/utils/Assertions;->checkState(ZLjava/lang/String;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/play/analytics/EventLogger$LogSource;->getProtoValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/play/analytics/EventLogger;->mLogSource:I

    iput-object p2, p0, Lcom/google/android/play/analytics/EventLogger;->mLoggingId:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mAuthTokenType:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->getInstance()Lcom/google/android/play/analytics/ProtoCache;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    new-instance v2, Lcom/google/android/volley/GoogleHttpClient;

    iget-object v4, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-direct {v2, v4, v0, v5}, Lcom/google/android/volley/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidId:J

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mAppVersion:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mMccmnc:Ljava/lang/String;

    move-object/from16 v0, p10

    iget-object v2, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->mServerUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mServerUrl:Ljava/lang/String;

    move-object/from16 v0, p10

    iget-wide v4, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->delayBetweenUploadsMs:J

    iput-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    move-object/from16 v0, p10

    iget-wide v4, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->minDelayBetweenUploadsMs:J

    iput-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mMinDelayBetweenUploadsMs:J

    move-object/from16 v0, p10

    iget v2, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->maxNumberOfRedirects:I

    iput v2, p0, Lcom/google/android/play/analytics/EventLogger;->mMaxNumberOfRedirects:I

    move-object/from16 v0, p10

    iget-wide v4, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->recommendedLogFileSize:J

    const-wide/16 v6, 0x32

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mMinImmediateUploadSize:J

    move-object/from16 v0, p10

    iget-wide v4, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->recommendedLogFileSize:J

    const-wide/16 v6, 0x7d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mMaxUploadSize:J

    new-instance v11, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p10

    iget-object v4, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->logDirectoryName:Ljava/lang/String;

    invoke-direct {v11, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p11, :cond_0

    const-string v12, "null_account"

    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p11

    invoke-static {v0, v11, v3}, Lcom/google/android/play/analytics/EventLogger;->maybeRenameLegacyDir(Landroid/accounts/Account;Ljava/io/File;Ljava/io/File;)V

    new-instance v2, Lcom/google/android/play/analytics/RollingFileStream;

    const-string v4, "eventlog.store"

    const-string v5, ".log"

    move-object/from16 v0, p10

    iget-wide v6, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->recommendedLogFileSize:J

    move-object/from16 v0, p10

    iget-wide v8, v0, Lcom/google/android/play/analytics/EventLogger$Configuration;->maxStorageSize:J

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/play/analytics/RollingFileStream;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/play/analytics/RollingFileStream$WriteCallbacks;)V

    iput-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    new-instance v2, Lcom/google/android/play/analytics/EventLogger$1;

    invoke-static {}, Lcom/google/android/play/analytics/EventLogger;->startHandlerThread()Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/google/android/play/analytics/EventLogger$1;-><init>(Lcom/google/android/play/analytics/EventLogger;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p11

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p11

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/play/analytics/EventLogger;Landroid/os/Message;)V
    .locals 0
    .param p0    # Lcom/google/android/play/analytics/EventLogger;
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method private addEventImpl(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v3, v1}, Lcom/google/android/play/analytics/RollingFileStream;->write(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->maybeQueueImmediateUpload()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v3, v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "PlayEventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write string ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v3, v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v4, v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;)V

    throw v3
.end method

.method private createByteArrayFrom(Ljava/io/InputStream;I)[B
    .locals 4
    .param p1    # Ljava/io/InputStream;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v0, p2, [B

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    if-gez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "PlayEventLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->maybeQueueImmediateUpload()V

    iget-wide v1, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->addEventImpl(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->uploadEventsImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->maybeQueueImmediateUpload()V

    :cond_0
    iget-wide v1, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p1    # Landroid/accounts/Account;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v3, "PlayEventLogger"

    const-string v4, "No account for auth token provided"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mAuthTokenType:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PlayEventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get auth token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "PlayEventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get auth token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "PlayEventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get auth token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)V
    .locals 10
    .param p1    # Lorg/apache/http/HttpResponse;

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    const/16 v6, 0x80

    invoke-direct {p0, v2, v6}, Lcom/google/android/play/analytics/EventLogger;->createByteArrayFrom(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->parseFrom([B)Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v4, v3, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/play/analytics/EventLogger;->setNextUploadTimeAfter(J)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v6, "PlayEventLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "PlayEventLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting the content of the response body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v6, "PlayEventLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading the content of the response body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private maybeQueueImmediateUpload()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v0}, Lcom/google/android/play/analytics/RollingFileStream;->totalUnreadFileLength()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mMinImmediateUploadSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    :cond_0
    return-void
.end method

.method private static maybeRenameLegacyDir(Landroid/accounts/Account;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0    # Landroid/accounts/Account;
    .param p1    # Ljava/io/File;
    .param p2    # Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private queueUpload(J)V
    .locals 8
    .param p1    # J

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTimeMs:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTimeMs:J

    sub-long p1, v4, v0

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/analytics/EventLogger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTimeMs:J

    iget-wide v6, p0, Lcom/google/android/play/analytics/EventLogger;->mMinDelayBetweenUploadsMs:J

    add-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTimeMs:J

    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/play/analytics/EventLogger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private readSerializedLogEvents()[[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    :cond_0
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->read()[B

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    check-cast v7, [[B

    :goto_1
    return-object v7

    :cond_2
    array-length v7, v6

    if-lez v7, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v7, v6

    int-to-long v7, v7

    add-long/2addr v0, v7

    :cond_3
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->peekNextReadLength()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_1

    add-long v7, v0, v2

    iget-wide v9, p0, Lcom/google/android/play/analytics/EventLogger;->mMaxUploadSize:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v7, v5

    goto :goto_1
.end method

.method private setNextUploadTimeAfter(J)V
    .locals 4
    .param p1    # J

    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mMinDelayBetweenUploadsMs:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTimeMs:J

    return-void
.end method

.method private static startHandlerThread()Landroid/os/HandlerThread;
    .locals 4

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$2;

    const-string v2, "PlayEventLogger"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/play/analytics/EventLogger$2;-><init>(Ljava/lang/String;ILjava/util/concurrent/Semaphore;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-object v0
.end method

.method private uploadEventsImpl()Z
    .locals 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->hasUnreadFiles()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-nez v7, :cond_1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->deleteAllReadFiles()V

    :goto_0
    return v6

    :cond_0
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->markAllFilesAsUnread()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    invoke-direct {v5}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;-><init>()V

    iget-wide v7, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidId:J

    iput-wide v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mLoggingId:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mLoggingId:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mMccmnc:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mMccmnc:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mAppVersion:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mAppVersion:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    :cond_4
    new-instance v2, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-direct {v2}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;-><init>()V

    const/4 v7, 0x4

    iput v7, v2, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->clientType:I

    iput-object v0, v2, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;->androidClientInfo:Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    iput-object v2, v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    iget v7, p0, Lcom/google/android/play/analytics/EventLogger;->mLogSource:I

    iput v7, v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->readSerializedLogEvents()[[B

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    iget-object v7, v5, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    if-nez v7, :cond_6

    const-string v7, "PlayEventLogger"

    const-string v8, "uploadEventsImpl: Thought we had files ready to send, but didn\'t"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v7, v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->deleteAllReadFiles()V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->markAllFilesAsUnread()V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mServerUrl:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/play/analytics/EventLogger;->mMaxNumberOfRedirects:I

    invoke-direct {p0, v7, v5, v8, v9}, Lcom/google/android/play/analytics/EventLogger;->uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    :try_start_5
    iget-object v6, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v6, v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v6}, Lcom/google/android/play/analytics/RollingFileStream;->deleteAllReadFiles()V

    :goto_1
    move v6, v1

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v6}, Lcom/google/android/play/analytics/RollingFileStream;->markAllFilesAsUnread()V

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_6
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upload failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v7, v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_8

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->deleteAllReadFiles()V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->markAllFilesAsUnread()V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_8
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v7, v5}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v6

    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->deleteAllReadFiles()V

    :goto_2
    throw v6

    :cond_9
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->markAllFilesAsUnread()V

    goto :goto_2
.end method

.method private uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;Ljava/lang/String;I)Z
    .locals 29
    .param p1    # Landroid/accounts/Account;
    .param p2    # Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/analytics/EventLogger;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/analytics/EventLogger;->mAuthTokenType:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "oauth2:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    const-string v6, "Bearer "

    :goto_0
    const-string v26, "Authorization"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v10, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v26, "gzip"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    const-string v26, "application/x-gzip"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/analytics/EventLogger;->mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/volley/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v26, 0xc8

    move/from16 v0, v26

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    const/16 v26, 0x12c

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/play/analytics/EventLogger;->handleResponse(Lorg/apache/http/HttpResponse;)V

    :goto_1
    return v8

    :cond_1
    const-string v6, "GoogleLogin auth="

    goto/16 :goto_0

    :cond_2
    const/16 v26, 0x12c

    move/from16 v0, v26

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    const/16 v26, 0x190

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    if-lez p4, :cond_4

    const-string v26, "Location"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v26, "PlayEventLogger"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Status "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "... redirect: no location header"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v26, p4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/play/analytics/EventLogger;->uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;Ljava/lang/String;I)Z

    move-result v8

    goto :goto_1

    :cond_4
    const-string v26, "PlayEventLogger"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Server returned "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "... redirect, but no more redirects"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " allowed."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v26, 0x190

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const-string v26, "PlayEventLogger"

    const-string v27, "Server returned 400... deleting local malformed logs"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v26, 0x191

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const-string v26, "PlayEventLogger"

    const-string v27, "Server returned 401... invalidating auth token"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_7
    const/16 v26, 0x1f4

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    const-string v26, "PlayEventLogger"

    const-string v27, "Server returned 500... server crashed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v26, 0x1f5

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const-string v26, "PlayEventLogger"

    const-string v27, "Server returned 501... service doesn\'t seem to exist"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v26, 0x1f6

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    const-string v26, "PlayEventLogger"

    const-string v27, "Server returned 502... servers are down"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v26, 0x1f7

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    const-string v26, "Retry-After"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v22

    if-eqz v22, :cond_c

    const/4 v15, 0x0

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v23

    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-string v26, "PlayEventLogger"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Server said to retry after "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " seconds"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->setNextUploadTimeAfter(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v15, 0x1

    :goto_2
    if-nez v15, :cond_b

    const/4 v8, 0x1

    :goto_3
    goto/16 :goto_1

    :catch_0
    move-exception v14

    const-string v26, "PlayEventLogger"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unknown retry value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    :cond_c
    const-string v26, "PlayEventLogger"

    const-string v27, "Status 503 without retry-after header"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v26, 0x1f8

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    const-string v26, "PlayEventLogger"

    const-string v27, "Server returned 504... timeout"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_e
    const-string v26, "PlayEventLogger"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unexpected error received from server: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method private writeRawVarint32(ILjava/io/OutputStream;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method


# virtual methods
.method public varargs logEvent(Ljava/lang/String;Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;[B[Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;
    .param p3    # [B
    .param p4    # [Ljava/lang/String;

    if-eqz p4, :cond_0

    array-length v5, p4

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const-string v6, "Extras must be null or of even length."

    invoke-static {v5, v6}, Lcom/google/android/play/utils/Assertions;->checkState(ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v5}, Lcom/google/android/play/analytics/ProtoCache;->obtainEvent()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    iput-object p1, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    if-eqz p3, :cond_1

    iput-object p3, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    :cond_1
    if-eqz p4, :cond_4

    array-length v5, p4

    if-eqz v5, :cond_4

    array-length v5, p4

    div-int/lit8 v4, v5, 0x2

    new-array v5, v4, [Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    iput-object v5, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoCache:Lcom/google/android/play/analytics/ProtoCache;

    invoke-virtual {v5}, Lcom/google/android/play/analytics/ProtoCache;->obtainKeyValue()Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    move-result-object v3

    mul-int/lit8 v2, v1, 0x2

    aget-object v5, p4, v2

    iput-object v5, v3, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p4, v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p4, v5

    :goto_2
    iput-object v5, v3, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-string v5, "null"

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/android/play/analytics/EventLogger;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNewOutputFile()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mLastSentExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    return-void
.end method

.method public onWrite(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;Ljava/io/OutputStream;)V
    .locals 3
    .param p1    # Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    .param p2    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mLastSentExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    array-length v2, v1

    invoke-direct {p0, v2, p2}, Lcom/google/android/play/analytics/EventLogger;->writeRawVarint32(ILjava/io/OutputStream;)V

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_1
    iget-object v2, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    iput-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mLastSentExperiments:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    iget-object v2, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/play/analytics/EventLogger;->EMPTY_EXPERIMENTS:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    iput-object v2, p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    goto :goto_0
.end method

.method public bridge synthetic onWrite(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/analytics/EventLogger;->onWrite(Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;Ljava/io/OutputStream;)V

    return-void
.end method
