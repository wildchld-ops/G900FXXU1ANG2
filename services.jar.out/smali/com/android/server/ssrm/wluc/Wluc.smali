.class public Lcom/android/server/ssrm/wluc/Wluc;
.super Ljava/lang/Object;
.source "Wluc.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final WLUC_DATABASE_PATH:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final packageName:Ljava/lang/String;

.field wlucNextUpdateCheck:Ljava/lang/String;

.field wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:Wluc"

    sput-object v0, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sec.android.app.wluc"

    iput-object v0, p0, Lcom/android/server/ssrm/wluc/Wluc;->packageName:Ljava/lang/String;

    const-string v0, "/data/system/wluc.db"

    iput-object v0, p0, Lcom/android/server/ssrm/wluc/Wluc;->WLUC_DATABASE_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->initWlucDatabase()V

    return-void
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createWlucDatabase()V
    .locals 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x19bfcc00

    add-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/wluc/WlucDatabase;->writeLog(Ljava/util/ArrayList;)V

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWlucDatabase : wlucNextUpdateCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initWlucDatabase()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/wluc/WlucDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/wluc/WlucDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/wluc.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->createWlucDatabase()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->readWlucDatabase()V

    goto :goto_0
.end method

.method public isNeedToUpdateCheck()Z
    .locals 7

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToUpdateCheck :e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v5, "isNeedToUpdateCheck : wrong wlucNextUpdateCheck"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCheckUpdateSchedule(Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v3, "check update schedule for package : com.sec.android.app.wluc"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v2, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v3, 0x62

    const-string v4, "com.sec.android.app.wluc"

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onMsgReceivedFromWlucThread(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x63

    const/4 v5, 0x5

    if-nez p1, :cond_0

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "onMsgReceivedFromWlucThread : received msg is null!!"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "NO_MATCHING_APPLICATION"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/wluc/Wluc;->updateWlucDatabase(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->readWlucDatabase()V

    goto :goto_0

    :cond_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "MATCHING_BUT_NO_UPDATE"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/wluc/Wluc;->updateWlucDatabase(I)V

    goto :goto_1

    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_4

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_UPDATE_AVAIBLE"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v4, 0x60

    const-string v5, "com.sec.android.app.wluc"

    iget-object v6, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_5

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_6

    :cond_5
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "MATCHING_UPDATABLE_NORMAL/MATCHING_UPDATABLE_CRITICAL"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v4, 0x61

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5e

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "DOWNLOAD_FAILED"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_8

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x59

    if-ne v3, v4, :cond_9

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "INSTALL_SUCCESS"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/wluc/Wluc;->updateWlucDatabase(I)V

    goto/16 :goto_1

    :cond_9
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_b

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_UPDATE_SCHEDULE"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->isNeedToUpdateCheck()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0xe

    iput v3, v0, Landroid/os/Message;->what:I

    iput v6, v0, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_a
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_UPDATE_SCHEDULE : not yet!!!"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x58

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "UPDATE_CHECK_FAIL"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onUpdateCheck(Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v3, "download check for package : com.sec.android.app.wluc"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v2, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v3, 0x60

    const-string v4, "com.sec.android.app.wluc"

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public readWlucDatabase()V
    .locals 8

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    invoke-virtual {v5}, Lcom/android/server/ssrm/wluc/WlucDatabase;->readLog()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readWlucDatabase : array - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/wluc.db"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->createWlucDatabase()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readWlucDatabase : wlucNextUpdateCheck : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateWlucDatabase(I)V
    .locals 8

    sget-object v4, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWlucDatabase : after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updateCheck will be available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x5265c00

    mul-int/2addr v6, p1

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    invoke-virtual {v4, v2}, Lcom/android/server/ssrm/wluc/WlucDatabase;->writeLog(Ljava/util/ArrayList;)V

    return-void
.end method
