.class public final Lcom/google/android/finsky/protos/Notifications$Notification;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notification"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Notifications$Notification;


# instance fields
.field public appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

.field public appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field public docTitle:Ljava/lang/String;

.field public docid:Lcom/google/android/finsky/protos/Common$Docid;

.field public hasDocTitle:Z

.field public hasNotificationId:Z

.field public hasNotificationType:Z

.field public hasTimestamp:Z

.field public hasUserEmail:Z

.field public inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

.field public libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

.field public libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

.field public notificationId:Ljava/lang/String;

.field public notificationType:I

.field public purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

.field public purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

.field public timestamp:J

.field public userEmail:Ljava/lang/String;

.field public userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Notifications$Notification;

    sput-object v0, Lcom/google/android/finsky/protos/Notifications$Notification;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Notifications$Notification;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasTimestamp:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasDocTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasUserEmail:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Notifications$Notification;->clear()Lcom/google/android/finsky/protos/Notifications$Notification;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/protos/Notifications$Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/protos/Notifications$Notification;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Notifications$Notification;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Notifications$Notification;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Notifications$Notification;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationId:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->timestamp:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasTimestamp:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasDocTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasUserEmail:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasTimestamp:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->timestamp:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasDocTitle:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasUserEmail:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationId:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v1, :cond_f

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iput v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Notifications$Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->timestamp:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasTimestamp:Z

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasDocTitle:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasUserEmail:Z

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Notifications$UserNotificationData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationId:Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Library$LibraryUpdate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Notifications$Notification;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Notifications$Notification;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasTimestamp:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->timestamp:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasDocTitle:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->docTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasUserEmail:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appData:Lcom/google/android/finsky/protos/Notifications$AndroidAppNotificationData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseRemovalData:Lcom/google/android/finsky/protos/Notifications$PurchaseRemovalData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->userNotificationData:Lcom/google/android/finsky/protos/Notifications$UserNotificationData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->inAppNotificationData:Lcom/google/android/finsky/protos/Notifications$InAppNotificationData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    if-eqz v0, :cond_c

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->purchaseDeclinedData:Lcom/google/android/finsky/protos/Notifications$PurchaseDeclinedData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->hasNotificationId:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->notificationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/Notifications$Notification;->libraryDirtyData:Lcom/google/android/finsky/protos/Notifications$LibraryDirtyData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    return-void
.end method
