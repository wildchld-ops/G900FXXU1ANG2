.class public abstract Lcom/bst/airmessage/sdk/IAirMessageService$Stub;
.super Landroid/os/Binder;
.source "IAirMessageService.java"

# interfaces
.implements Lcom/bst/airmessage/sdk/IAirMessageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bst/airmessage/sdk/IAirMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/airmessage/sdk/IAirMessageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bst.airmessage.sdk.IAirMessageService"

.field static final TRANSACTION_getAirMessageVersion:I = 0x1

.field static final TRANSACTION_isAirMessageOn:I = 0x2

.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_showAirMessages:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x5

.field static final TRANSACTION_updateReplyMessageStatus:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bst/airmessage/sdk/IAirMessageService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bst/airmessage/sdk/IAirMessageService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bst/airmessage/sdk/IAirMessageService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bst/airmessage/sdk/IAirMessageService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->getAirMessageVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->isAirMessageOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Lcom/bst/airmessage/sdk/AirMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->showAirMessages(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bst/airmessage/sdk/IAirMessageCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->registerCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bst/airmessage/sdk/IAirMessageCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->unregisterCallback(Lcom/bst/airmessage/sdk/IAirMessageCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v3, "com.bst.airmessage.sdk.IAirMessageService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/bst/airmessage/sdk/ReplyStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bst/airmessage/sdk/ReplyStatus;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/bst/airmessage/sdk/IAirMessageService$Stub;->updateReplyMessageStatus(Lcom/bst/airmessage/sdk/ReplyStatus;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
