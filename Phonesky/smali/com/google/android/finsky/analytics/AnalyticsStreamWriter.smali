.class public Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;
.super Ljava/lang/Object;
.source "AnalyticsStreamWriter.java"


# static fields
.field private static final FILE_COMMAND:Ljava/io/File;

.field private static final FILE_LOG_OUT:Ljava/io/File;

.field private static final FILE_RESET:Ljava/io/File;

.field private static final SNIFFER_DIRECTORY:Ljava/io/File;


# instance fields
.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    const-string v2, "debug_logger"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    const-string v2, "reset"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_RESET:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_COMMAND:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    const-string v2, "logs.1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_LOG_OUT:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mHandler:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/google/android/finsky/config/G;->enableUiTestLogStreamer:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mEnabled:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    invoke-direct {p0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->checkDebugWriterRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;

    invoke-direct {p0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->queueCommandWatcher()V

    return-void
.end method

.method private checkDebugWriterRunning()Z
    .locals 8

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    sget-object v7, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_RESET:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v6, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mRunning:Z

    invoke-direct {p0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->clearLogDirectory()V

    sget-object v6, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_RESET:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    sget-object v6, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_COMMAND:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v6, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_COMMAND:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->handleCommand(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    move-object v2, v3

    :goto_1
    sget-object v6, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_COMMAND:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_3
    iget-boolean v6, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mRunning:Z

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_4
    const-string v6, "Unexpected FileNotFound"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    goto :goto_2
.end method

.method private clearLogDirectory()V
    .locals 6

    sget-object v5, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->SNIFFER_DIRECTORY:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    sget-object v5, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_COMMAND:Ljava/io/File;

    invoke-virtual {v1, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleCommand(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Handle Analytics Test Stream Command: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "RUN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mRunning:Z

    invoke-direct {p0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->queueCommandWatcher()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "STOP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mRunning:Z

    goto :goto_0
.end method

.method private queueCommandWatcher()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter$1;-><init>(Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private writeProtoBytes([B)V
    .locals 6
    .param p1    # [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    sget-object v4, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->FILE_LOG_OUT:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    :try_start_1
    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    const-string v4, "Unexpected IOException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public varargs writeEvent(Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # [B
    .param p3    # [Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->mEnabled:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->checkDebugWriterRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    iput-object p1, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p2, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    :cond_2
    if-eqz p3, :cond_4

    array-length v6, p3

    if-lez v6, :cond_4

    array-length v6, p3

    div-int/lit8 v4, v6, 0x2

    new-array v6, v4, [Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    iput-object v6, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    new-instance v3, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    invoke-direct {v3}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;-><init>()V

    mul-int/lit8 v2, v1, 0x2

    aget-object v6, p3, v2

    iput-object v6, v3, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p3, v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p3, v6

    :goto_2
    iput-object v6, v3, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    aput-object v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "null"

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/finsky/analytics/AnalyticsStreamWriter;->writeProtoBytes([B)V

    goto :goto_0
.end method
