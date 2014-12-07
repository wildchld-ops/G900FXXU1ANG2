.class public Lcom/android/mms/ui/NoConfirmationSendService;
.super Landroid/app/IntentService;
.source "NoConfirmationSendService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/NoConfirmationSendService"


# instance fields
.field public mToastHandler:Landroid/os/Handler;

.field private final sDPMToast:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/android/mms/ui/NoConfirmationSendService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/NoConfirmationSendService;->sDPMToast:I

    new-instance v0, Lcom/android/mms/ui/NoConfirmationSendService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NoConfirmationSendService$1;-><init>(Lcom/android/mms/ui/NoConfirmationSendService;)V

    iput-object v0, p0, Lcom/android/mms/ui/NoConfirmationSendService;->mToastHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # [Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 28
    .param p1    # Landroid/content/Intent;

    const-string v6, "NoConfirmationSendService onHandleIntent"

    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v6, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NoConfirmationSendService onHandleIntent wrong action: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Mms/NoConfirmationSendService"

    const-string v11, "message sending is disabled"

    invoke-static {v6, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/NoConfirmationSendService;->mToastHandler:Landroid/os/Handler;

    const/16 v11, 0x64

    invoke-virtual {v6, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v6, "SpamReport"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v6, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "voice_call"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "vt_call"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string v6, "number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v6, "time"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->sendCallSpamReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-string v6, "sms"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "mms"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_5
    const-string v6, "msg_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->sendMessageSpamReport(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    if-nez v15, :cond_7

    const-string v6, "Called to send SMS but no extras"

    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v15, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v8}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Recipient(s) cannot be empty"

    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "showUI"

    const/4 v11, 0x0

    invoke-virtual {v15, v6, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "com.android.mms.ui.ComposeMessageActivityNoLockScreen"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Message cannot be empty"

    invoke-static {v6}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v6, ";"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/mms/ui/NoConfirmationSendService;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySendSMS()Z

    move-result v6

    if-eqz v6, :cond_c

    const-wide/16 v11, 0x5dc

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v6, "Mms/NoConfirmationSendService"

    const-string v11, "@@ NoConfirmationSendService : "

    invoke-static {v6, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isInternationalRoaming(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/RoamingGuardPopupActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "recipient"

    move-object/from16 v0, v26

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v11, "body"

    invoke-virtual {v6, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v11, "threadid"

    invoke-virtual {v6, v11, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const/high16 v11, 0x18000000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_d
    new-instance v5, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JIZ)V

    :try_start_1
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v9, v10}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v14

    const-string v6, "Mms/NoConfirmationSendService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send SMS message, threadId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
