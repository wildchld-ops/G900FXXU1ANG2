.class Lcom/samsung/dialer/util/DirectCallingManager$5;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/util/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "recognition_error"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/dialer/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$100(Lcom/samsung/dialer/util/DirectCallingManager;Z)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/dialer/util/DirectCallingManager$5;->this$0:Lcom/samsung/dialer/util/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/util/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dialer/util/DirectCallingManager;->access$1700(Lcom/samsung/dialer/util/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method
