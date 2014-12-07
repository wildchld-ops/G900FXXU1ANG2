.class public final Lcom/google/android/finsky/protos/Response$Payload;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$Payload;


# instance fields
.field public acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

.field public ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

.field public billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

.field public browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

.field public bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

.field public buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

.field public checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

.field public checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

.field public checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

.field public commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

.field public consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

.field public debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

.field public deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

.field public detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

.field public flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

.field public initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

.field public instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

.field public libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

.field public listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

.field public logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

.field public modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

.field public plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

.field public plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

.field public preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

.field public purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

.field public rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

.field public recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

.field public redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

.field public redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

.field public resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

.field public reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

.field public revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

.field public searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

.field public tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

.field public updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

.field public uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

.field public userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

.field public verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Response$Payload;

    sput-object v0, Lcom/google/android/finsky/protos/Response$Payload;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$Payload;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Response$Payload;->clear()Lcom/google/android/finsky/protos/Response$Payload;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Response$Payload;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    if-eqz v1, :cond_11

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    if-eqz v1, :cond_12

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-eqz v1, :cond_13

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    if-eqz v1, :cond_14

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    if-eqz v1, :cond_15

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    if-eqz v1, :cond_16

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    if-eqz v1, :cond_17

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    if-eqz v1, :cond_18

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    if-eqz v1, :cond_19

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    if-eqz v1, :cond_1c

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    if-eqz v1, :cond_1d

    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    if-eqz v1, :cond_1e

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    if-eqz v1, :cond_1f

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    if-eqz v1, :cond_20

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    if-eqz v1, :cond_21

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    if-eqz v1, :cond_22

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    if-eqz v1, :cond_23

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    if-eqz v1, :cond_24

    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    if-eqz v1, :cond_25

    const/16 v1, 0x26

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iput v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$Payload;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocList$ListResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/Details$DetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Details$DetailsResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Rev$ReviewResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/Buy$BuyResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Buy$BuyResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/protos/Search$SearchResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Search$SearchResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Toc$TocResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Browse$BrowseResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/finsky/protos/Log$LogResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Log$LogResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    if-nez v1, :cond_d

    new-instance v1, Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    :cond_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    if-nez v1, :cond_f

    new-instance v1, Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    if-nez v1, :cond_10

    new-instance v1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    if-nez v1, :cond_11

    new-instance v1, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/finsky/protos/RevokeResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/RevokeResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    :cond_12
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    if-nez v1, :cond_13

    new-instance v1, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    :cond_13
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-nez v1, :cond_14

    new-instance v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    if-nez v1, :cond_15

    new-instance v1, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    :cond_15
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    if-nez v1, :cond_16

    new-instance v1, Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    :cond_16
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    if-nez v1, :cond_17

    new-instance v1, Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/RateSuggestedContentResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    if-nez v1, :cond_18

    new-instance v1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    :cond_18
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    if-nez v1, :cond_19

    new-instance v1, Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    :cond_1a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    :cond_1b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1c
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    :cond_1c
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    :cond_1d
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    :cond_1e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    if-nez v1, :cond_1f

    new-instance v1, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    :cond_1f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_20
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    if-nez v1, :cond_20

    new-instance v1, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    :cond_20
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_21
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    if-nez v1, :cond_21

    new-instance v1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_22
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    if-nez v1, :cond_22

    new-instance v1, Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    :cond_22
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_23
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    if-nez v1, :cond_23

    new-instance v1, Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    :cond_23
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_24
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    if-nez v1, :cond_24

    new-instance v1, Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    :cond_24
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_25
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    if-nez v1, :cond_25

    new-instance v1, Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    :cond_25
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_26
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    if-nez v1, :cond_26

    new-instance v1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    :cond_26
    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xea -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0x102 -> :sswitch_20
        0x10a -> :sswitch_21
        0x112 -> :sswitch_22
        0x11a -> :sswitch_23
        0x122 -> :sswitch_24
        0x12a -> :sswitch_25
        0x132 -> :sswitch_26
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Response$Payload;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$Payload;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->listResponse:Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->detailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->reviewResponse:Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->buyResponse:Lcom/google/android/finsky/protos/Buy$BuyResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->searchResponse:Lcom/google/android/finsky/protos/Search$SearchResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->tocResponse:Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->browseResponse:Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->updateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->logResponse:Lcom/google/android/finsky/protos/Log$LogResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusOneResponse:Lcom/google/android/finsky/protos/PlusOne$PlusOneResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->flagContentResponse:Lcom/google/android/finsky/protos/ContentFlagging$FlagContentResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->ackNotificationResponse:Lcom/google/android/finsky/protos/AckNotification$AckNotificationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->initiateAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->verifyAssociationResponse:Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->libraryReplicationResponse:Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->revokeResponse:Lcom/google/android/finsky/protos/RevokeResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->bulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->resolveLinkResponse:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->deliveryResponse:Lcom/google/android/finsky/protos/Delivery$DeliveryResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    if-eqz v0, :cond_15

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->acceptTosResponse:Lcom/google/android/finsky/protos/Tos$AcceptTosResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    if-eqz v0, :cond_16

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->rateSuggestedContentResponse:Lcom/google/android/finsky/protos/RateSuggestedContentResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    if-eqz v0, :cond_17

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkPromoOfferResponse:Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    if-eqz v0, :cond_18

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->instrumentSetupInfoResponse:Lcom/google/android/finsky/protos/BuyInstruments$InstrumentSetupInfoResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    if-eqz v0, :cond_19

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemGiftCardResponse:Lcom/google/android/finsky/protos/BuyInstruments$RedeemGiftCardResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    if-eqz v0, :cond_1a

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->modifyLibraryResponse:Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    if-eqz v0, :cond_1b

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->uploadDeviceConfigResponse:Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    if-eqz v0, :cond_1c

    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->plusProfileResponse:Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    if-eqz v0, :cond_1d

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->consumePurchaseResponse:Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    if-eqz v0, :cond_1e

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->billingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    if-eqz v0, :cond_1f

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->preparePurchaseResponse:Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    if-eqz v0, :cond_20

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->commitPurchaseResponse:Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    if-eqz v0, :cond_21

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->debugSettingsResponse:Lcom/google/android/finsky/protos/DebugSettings$DebugSettingsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    if-eqz v0, :cond_22

    const/16 v0, 0x23

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->checkIabPromoResponse:Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    if-eqz v0, :cond_23

    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->userActivitySettingsResponse:Lcom/google/android/finsky/protos/UserActivity$UserActivitySettingsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_23
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    if-eqz v0, :cond_24

    const/16 v0, 0x25

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->recordUserActivityResponse:Lcom/google/android/finsky/protos/UserActivity$RecordUserActivityResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    if-eqz v0, :cond_25

    const/16 v0, 0x26

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$Payload;->redeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_25
    return-void
.end method
