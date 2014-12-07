.class Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$1900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const-string v3, "mms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v46

    const/16 v34, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$1900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v47

    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v45

    sget-object v3, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v4, v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "read"

    aput-object v10, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    if-eqz v34, :cond_2

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "spam_report"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    const-string v3, "read"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v34, :cond_3

    :goto_1
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v6

    const/16 v7, 0x70b

    new-instance v8, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    invoke-direct {v8, v3, v4, v10}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$1900(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$2100(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v35

    :try_start_2
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v34, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v34, :cond_5

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    :cond_6
    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "teleservice_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mTeleserviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_url"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getSpamReport()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "date_sent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v4, v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    const/4 v10, 0x1

    invoke-static {v4, v6, v7, v10}, Lcom/android/mms/ui/MessageUtils;->getSmsSentTime(Landroid/content/Context;JZ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v8, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v9, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v12, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v16}, Lcom/android/mms/ui/SpamMessageManager;->access$2200(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-wide v10, v7, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v4, v6, v7}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_9
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    const/16 v49, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$600(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v34

    if-eqz v34, :cond_10

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$600(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v49

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v50

    const/16 v36, 0x0

    :goto_4
    move/from16 v0, v36

    move/from16 v1, v50

    if-ge v0, v1, :cond_10

    const/16 v39, 0x0

    const/16 v38, 0x1

    :try_start_3
    const-string v3, "transport_type"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v39

    :goto_5
    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    :try_start_4
    const-string v3, "_id"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v38

    :goto_6
    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$600(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v41

    move-object/from16 v2, v52

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_b

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    :goto_7
    add-int/lit8 v36, v36, 0x1

    goto :goto_4

    :catch_1
    move-exception v35

    const-string v3, "colsMap"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v35

    const-string v3, "colsMap"

    invoke-virtual/range {v35 .. v35}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    add-int/lit8 v48, v48, 0x1

    const-string v3, "mms"

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v41

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const-string v3, "read"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    const-string v3, "address"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "body"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "date"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "teleservice_id"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "link_url"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "sms"

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-wide/from16 v0, v41

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/ui/MessageUtils;->getSmsSentTime(Landroid/content/Context;JZ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "spam_report"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_7

    :cond_e
    sget-object v3, Lcom/android/mms/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v41

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const-string v3, "read"

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_f
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    if-nez v48, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;-><init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_12
    const/16 v40, 0x0

    :goto_b
    move/from16 v0, v40

    move/from16 v1, v48

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    const-string v3, "mms"

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v46

    :try_start_5
    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v47

    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v45

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_14
    :goto_c
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$2100(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    :catch_3
    move-exception v35

    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_16
    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "teleservice_id"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date_sent"

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v16}, Lcom/android/mms/ui/SpamMessageManager;->access$2200(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    :goto_d
    if-nez v12, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v8, v9, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_c

    :cond_18
    new-instance v16, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "teleservice_id"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_url"

    move-object/from16 v0, v16

    move-object/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1300(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v6 .. v16}, Lcom/android/mms/ui/SpamMessageManager;->access$2200(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_d

    :cond_1a
    const/16 v36, 0x0

    :goto_e
    move/from16 v0, v36

    move/from16 v1, v48

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v17

    const/16 v18, 0x70b

    new-instance v19, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v6, 0x0

    add-int/lit8 v3, v48, -0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1b
    :goto_10
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_f

    :cond_1d
    add-int/lit8 v3, v48, -0x1

    move/from16 v0, v36

    if-ne v0, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1700(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10

    :cond_1e
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a
.end method
