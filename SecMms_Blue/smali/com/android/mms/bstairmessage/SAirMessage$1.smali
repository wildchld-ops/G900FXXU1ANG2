.class Lcom/android/mms/bstairmessage/SAirMessage$1;
.super Lcom/bst/airmessage/sdk/AirMessageCallback;
.source "SAirMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/bstairmessage/SAirMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/bstairmessage/SAirMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/bstairmessage/SAirMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    invoke-direct {p0}, Lcom/bst/airmessage/sdk/AirMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Mms/SAirMessage"

    const-string v1, "onReadMessage  begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReplyAirMessage(JLcom/bst/airmessage/sdk/AirMessage;)V
    .locals 9
    .param p1    # J
    .param p3    # Lcom/bst/airmessage/sdk/AirMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    const-string v6, "Mms/SAirMessage"

    const-string v7, "onReplyAirMessage  begin"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/bst/airmessage/sdk/AirMessage;->getThreadId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    # getter for: Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/bstairmessage/SAirMessage;->access$000(Lcom/android/mms/bstairmessage/SAirMessage;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    new-instance v2, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;

    invoke-direct {v2, p0}, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;-><init>(Lcom/android/mms/bstairmessage/SAirMessage$1;)V

    invoke-virtual {v2, p3}, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->setAirMsg(Lcom/bst/airmessage/sdk/AirMessage;)V

    iget-object v6, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    # getter for: Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/bstairmessage/SAirMessage;->access$000(Lcom/android/mms/bstairmessage/SAirMessage;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {p3}, Lcom/bst/airmessage/sdk/AirMessage;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v6, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    # getter for: Lcom/android/mms/bstairmessage/SAirMessage;->BUNDLE_EXTRA_SMSBODY_KEY:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/bstairmessage/SAirMessage;->access$100(Lcom/android/mms/bstairmessage/SAirMessage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/mms/data/WorkingMessage;->setMsgBody(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v8}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    iget-object v6, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    iget-object v7, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    # getter for: Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/bstairmessage/SAirMessage;->access$000(Lcom/android/mms/bstairmessage/SAirMessage;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/bstairmessage/SAirMessage;->isEnableDelaySending(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    invoke-virtual {v6}, Lcom/android/mms/bstairmessage/SAirMessage;->getDelayedDeliveryTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/mms/data/WorkingMessage;->setDelayedDeliveryTime(J)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->send()V

    const-string v6, "Mms/SAirMessage"

    const-string v7, "onReplyAirMessage  end"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
