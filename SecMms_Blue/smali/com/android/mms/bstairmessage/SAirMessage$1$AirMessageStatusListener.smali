.class Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;
.super Ljava/lang/Object;
.source "SAirMessage.java"

# interfaces
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/bstairmessage/SAirMessage$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirMessageStatusListener"
.end annotation


# instance fields
.field msgType:Ljava/lang/String;

.field msgid:J

.field final synthetic this$1:Lcom/android/mms/bstairmessage/SAirMessage$1;


# direct methods
.method constructor <init>(Lcom/android/mms/bstairmessage/SAirMessage$1;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->this$1:Lcom/android/mms/bstairmessage/SAirMessage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgid:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAttachmentChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onAttachmentError(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onMaxPendingMessagesReached()V
    .locals 0

    return-void
.end method

.method public onMessageSent()V
    .locals 3

    const-string v0, "Mms/SAirMessage"

    const-string v1, "++++++++onMessageSent+++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgType:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->this$1:Lcom/android/mms/bstairmessage/SAirMessage$1;

    iget-object v0, v0, Lcom/android/mms/bstairmessage/SAirMessage$1;->this$0:Lcom/android/mms/bstairmessage/SAirMessage;

    # getter for: Lcom/android/mms/bstairmessage/SAirMessage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/bstairmessage/SAirMessage;->access$000(Lcom/android/mms/bstairmessage/SAirMessage;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgid:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->markSmsAsRead(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public onPreMessageSent()V
    .locals 0

    return-void
.end method

.method public onProtocolChanged(ZI)V
    .locals 0
    .param p1    # Z
    .param p2    # I

    return-void
.end method

.method public setAirMsg(Lcom/bst/airmessage/sdk/AirMessage;)V
    .locals 2
    .param p1    # Lcom/bst/airmessage/sdk/AirMessage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bst/airmessage/sdk/AirMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgid:J

    invoke-virtual {p1}, Lcom/bst/airmessage/sdk/AirMessage;->getMineType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/bstairmessage/SAirMessage$1$AirMessageStatusListener;->msgType:Ljava/lang/String;

    :cond_0
    return-void
.end method
