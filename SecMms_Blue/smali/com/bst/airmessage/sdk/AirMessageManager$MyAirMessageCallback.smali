.class Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;
.super Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;
.source "AirMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bst/airmessage/sdk/AirMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAirMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bst/airmessage/sdk/AirMessageManager;


# direct methods
.method constructor <init>(Lcom/bst/airmessage/sdk/AirMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    invoke-direct {p0}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReplyAirMessage(JLcom/bst/airmessage/sdk/AirMessage;)V
    .locals 1
    .param p1    # J
    .param p3    # Lcom/bst/airmessage/sdk/AirMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    # getter for: Lcom/bst/airmessage/sdk/AirMessageManager;->mCallback:Lcom/bst/airmessage/sdk/IAirMessageCallback;
    invoke-static {v0}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$000(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/IAirMessageCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessageManager$MyAirMessageCallback;->this$0:Lcom/bst/airmessage/sdk/AirMessageManager;

    # getter for: Lcom/bst/airmessage/sdk/AirMessageManager;->mCallback:Lcom/bst/airmessage/sdk/IAirMessageCallback;
    invoke-static {v0}, Lcom/bst/airmessage/sdk/AirMessageManager;->access$000(Lcom/bst/airmessage/sdk/AirMessageManager;)Lcom/bst/airmessage/sdk/IAirMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/bst/airmessage/sdk/IAirMessageCallback;->onReplyAirMessage(JLcom/bst/airmessage/sdk/AirMessage;)V

    :cond_0
    return-void
.end method

.method public updateReplyAirMessageStatus(Ljava/lang/String;JJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
