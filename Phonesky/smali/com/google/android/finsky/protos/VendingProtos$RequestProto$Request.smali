.class public final Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos$RequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;


# instance fields
.field public ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

.field public billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

.field public checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

.field public checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

.field public contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

.field public inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

.field public inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

.field public modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

.field public purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

.field public restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->clear()Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    if-eqz v1, :cond_2

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    if-eqz v1, :cond_3

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    if-eqz v1, :cond_4

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    if-eqz v1, :cond_5

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    if-eqz v1, :cond_6

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    if-eqz v1, :cond_7

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    if-eqz v1, :cond_8

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    if-eqz v1, :cond_9

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x4a -> :sswitch_2
        0x6a -> :sswitch_3
        0x92 -> :sswitch_4
        0xc2 -> :sswitch_5
        0xd2 -> :sswitch_6
        0xfa -> :sswitch_7
        0x102 -> :sswitch_8
        0x10a -> :sswitch_9
        0x112 -> :sswitch_a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest:Lcom/google/android/finsky/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->contentSyncRequest:Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    if-eqz v0, :cond_4

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest:Lcom/google/android/finsky/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->billingEventRequest:Lcom/google/android/finsky/protos/VendingProtos$BillingEventRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    if-eqz v0, :cond_6

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest:Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    if-eqz v0, :cond_8

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    if-eqz v0, :cond_9

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest:Lcom/google/android/finsky/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    return-void
.end method
