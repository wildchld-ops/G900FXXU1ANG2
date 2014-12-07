.class public interface abstract Lcom/bst/airmessage/sdk/IAirMessageCallback;
.super Ljava/lang/Object;
.source "IAirMessageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReadMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReplyAirMessage(JLcom/bst/airmessage/sdk/AirMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateReplyAirMessageStatus(Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
