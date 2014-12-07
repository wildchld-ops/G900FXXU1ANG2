.class public final Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos$ResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;


# instance fields
.field public ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

.field public billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

.field public checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

.field public contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

.field public getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

.field public getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

.field public inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

.field public inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

.field public modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

.field public purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

.field public responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

.field public restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->clear()Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    if-eqz v1, :cond_4

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    if-eqz v1, :cond_5

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    if-eqz v1, :cond_6

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    if-eqz v1, :cond_7

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    if-eqz v1, :cond_8

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    if-eqz v1, :cond_9

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    if-eqz v1, :cond_a

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    if-eqz v1, :cond_b

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x2a -> :sswitch_2
        0x42 -> :sswitch_3
        0x4a -> :sswitch_4
        0x62 -> :sswitch_5
        0x8a -> :sswitch_6
        0x92 -> :sswitch_7
        0xba -> :sswitch_8
        0xca -> :sswitch_9
        0xf2 -> :sswitch_a
        0xfa -> :sswitch_b
        0x10a -> :sswitch_c
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->responseProperties:Lcom/google/android/finsky/protos/VendingProtos$ResponsePropertiesProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getAssetResponse:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse:Lcom/google/android/finsky/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    if-eqz v0, :cond_8

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->billingEventResponse:Lcom/google/android/finsky/protos/VendingProtos$BillingEventResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    if-eqz v0, :cond_a

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    if-eqz v0, :cond_b

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    return-void
.end method
