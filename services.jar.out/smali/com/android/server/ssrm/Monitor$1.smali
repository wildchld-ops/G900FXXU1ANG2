.class Lcom/android/server/ssrm/Monitor$1;
.super Landroid/os/Handler;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x2

    const/4 v6, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v5, v7}, Lcom/android/server/ssrm/Monitor;->onForegroundAppChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v6, v5}, Lcom/android/server/ssrm/Monitor;->onReceiveBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CFMS_COMMAND:: values[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v5, v4

    if-ne v5, v7, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CFMS_COMMAND:: values[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", values[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-ne v5, v7, :cond_0

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ssrm/SortingMachine;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v6, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v6, v6, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mWluc:Lcom/android/server/ssrm/wluc/Wluc;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mWluc:Lcom/android/server/ssrm/wluc/Wluc;

    invoke-virtual {v5, p1}, Lcom/android/server/ssrm/wluc/Wluc;->onMsgReceivedFromWlucThread(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v5, v5, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/ssrm/Monitor;->onWifiConnected(Z)V
    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->access$000(Lcom/android/server/ssrm/Monitor;Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/ssrm/Monitor;->onWifiConnected(Z)V
    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->access$000(Lcom/android/server/ssrm/Monitor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
