.class public Landroid/os/dar/log/SdpLog;
.super Ljava/lang/Object;
.source "SdpLog.java"


# static fields
.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/sdp_framework_log.txt"

.field private static TAG:Ljava/lang/String;

.field private static _instance:Landroid/os/dar/log/SdpLog;


# instance fields
.field private mNow:Ljava/text/SimpleDateFormat;

.field private outputContents:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SDP.log"

    sput-object v0, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/dar/log/SdpLog;

    invoke-direct {v0}, Landroid/os/dar/log/SdpLog;-><init>()V

    sput-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/os/dar/log/SdpLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/dar/log/SdpLog;->mNow:Ljava/text/SimpleDateFormat;

    sget-object v0, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroid/os/dar/log/SdpLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/dar/log/SdpLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/dar/log/SdpLog;->flush()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    sget-object v1, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/os/dar/log/SdpLog;->_write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    sget-object v1, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/os/dar/log/SdpLog;->_write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private exists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/sdp_framework_log.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private flush()V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/log/sdp_framework_log.txt"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v6, p0, Landroid/os/dar/log/SdpLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v5, p0, Landroid/os/dar/log/SdpLog;->outputContents:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/os/dar/log/SdpLog;->outputContents:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    move-object v3, v4

    move-object v1, v2

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    :goto_1
    :try_start_7
    sget-object v5, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v5, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v5, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    sget-object v6, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    sget-object v1, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/os/dar/log/SdpLog;->_write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Landroid/os/dar/log/SdpLog;->mNow:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/os/dar/log/SdpLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/os/dar/log/SdpLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    sget-object v1, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/os/dar/log/SdpLog;->_write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    sget-object v1, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/os/dar/log/SdpLog;->_write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static write(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/os/dar/log/SdpLog;->_instance:Landroid/os/dar/log/SdpLog;

    sget-object v1, Landroid/os/dar/log/SdpLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/os/dar/log/SdpLog;->_write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
