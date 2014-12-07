.class public Lcom/bst/airmessage/sdk/AirMessageCallback;
.super Ljava/lang/Object;
.source "AirMessageCallback.java"

# interfaces
.implements Lcom/bst/airmessage/sdk/IAirMessageCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReadMessage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onReplyAirMessage(JLcom/bst/airmessage/sdk/AirMessage;)V
    .locals 0
    .param p1    # J
    .param p3    # Lcom/bst/airmessage/sdk/AirMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
