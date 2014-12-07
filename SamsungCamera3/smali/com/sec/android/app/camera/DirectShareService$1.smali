.class Lcom/sec/android/app/camera/DirectShareService$1;
.super Landroid/content/BroadcastReceiver;
.source "DirectShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DirectShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/DirectShareService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/DirectShareService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const v9, 0x7f0202e3

    const/4 v8, 0x0

    if-nez p2, :cond_1

    const-string v4, "DirectShareService"

    const-string v5, "onReceive - intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/DirectShareService;->getType(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/DirectShareService;->getType(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera.directshare.PROGRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b022e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$002(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$000(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v5, 0x64

    const-string v6, "progress"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/DirectShareService;->access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b022f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationProgressText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$002(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera.directshare.UPLOAD_ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "DirectShareService"

    const-string v5, "INTENT_UPLOAD_ERROR"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0233

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0237

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$300(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/DirectShareService;->access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$400(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v5, "type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/camera/DirectShareService;->reTransferSendIntent(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0234

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b023a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera.directshare.SEND_COMPLETE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DirectShareService"

    const-string v5, "INTENT_SEND_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_9

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0231

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0236

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    :goto_3
    const-string v4, "failedfileurlList"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "DirectShareService"

    const-string v5, "failed file transfer in send_complete. retry transfer"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2, v0}, Lcom/sec/android/app/camera/DirectShareService;->reTransferSendIntent(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0232

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$302(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0239

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/DirectShareService;->access$402(Lcom/sec/android/app/camera/DirectShareService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_a
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$100(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationResultText:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$300(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    if-nez v4, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    # setter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5, v4}, Lcom/sec/android/app/camera/DirectShareService;->access$202(Lcom/sec/android/app/camera/DirectShareService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/sec/android/app/camera/DirectShareService;->access$200(Lcom/sec/android/app/camera/DirectShareService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    # getter for: Lcom/sec/android/app/camera/DirectShareService;->mToastTest:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/camera/DirectShareService;->access$400(Lcom/sec/android/app/camera/DirectShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/DirectShareService;->removeCompletedState(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/DirectShareService;->isCompletedTransfer()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/DirectShareService$1;->this$0:Lcom/sec/android/app/camera/DirectShareService;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/DirectShareService;->finishService()V

    goto/16 :goto_0
.end method
