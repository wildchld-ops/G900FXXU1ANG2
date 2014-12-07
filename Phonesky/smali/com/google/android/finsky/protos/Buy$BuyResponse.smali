.class public final Lcom/google/android/finsky/protos/Buy$BuyResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuyResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse;


# instance fields
.field public addInstrumentPromptHtml:Ljava/lang/String;

.field public baseCheckoutUrl:Ljava/lang/String;

.field public challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

.field public checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

.field public checkoutServiceId:Ljava/lang/String;

.field public checkoutTokenRequired:Z

.field public confirmButtonText:Ljava/lang/String;

.field public continueViaUrl:Ljava/lang/String;

.field public hasAddInstrumentPromptHtml:Z

.field public hasBaseCheckoutUrl:Z

.field public hasCheckoutServiceId:Z

.field public hasCheckoutTokenRequired:Z

.field public hasConfirmButtonText:Z

.field public hasContinueViaUrl:Z

.field public hasPermissionError:Z

.field public hasPermissionErrorMessageText:Z

.field public hasPermissionErrorTitleText:Z

.field public hasPurchaseCookie:Z

.field public hasPurchaseStatusUrl:Z

.field public hasServerLogsCookie:Z

.field public permissionError:I

.field public permissionErrorMessageText:Ljava/lang/String;

.field public permissionErrorTitleText:Ljava/lang/String;

.field public purchaseCookie:Ljava/lang/String;

.field public purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

.field public purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

.field public purchaseStatusUrl:Ljava/lang/String;

.field public serverLogsCookie:[B

.field public tosCheckboxHtml:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Buy$BuyResponse;

    sput-object v0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorTitleText:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorMessageText:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Buy$BuyResponse;->clear()Lcom/google/android/finsky/protos/Buy$BuyResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Buy$BuyResponse;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->continueViaUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutTokenRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutServiceId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->baseCheckoutUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    iput v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionError:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionError:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseCookie:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->addInstrumentPromptHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->confirmButtonText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorTitleText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorTitleText:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorMessageText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorMessageText:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->continueViaUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->continueViaUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutServiceId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutServiceId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutTokenRequired:Z

    if-eqz v5, :cond_9

    :cond_8
    const/16 v5, 0xd

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutTokenRequired:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->baseCheckoutUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->baseCheckoutUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_d
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_e
    iget v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionError:I

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionError:Z

    if-eqz v5, :cond_10

    :cond_f
    const/16 v5, 0x26

    iget v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionError:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_10
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-eqz v5, :cond_11

    const/16 v5, 0x27

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_11
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseCookie:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    const/16 v5, 0x2e

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseCookie:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_13
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v5, :cond_14

    const/16 v5, 0x31

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_14
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->addInstrumentPromptHtml:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    const/16 v5, 0x32

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->addInstrumentPromptHtml:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_16
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->confirmButtonText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    const/16 v5, 0x33

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->confirmButtonText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_18
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorTitleText:Z

    if-nez v5, :cond_19

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorTitleText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    const/16 v5, 0x34

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorTitleText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1a
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorMessageText:Z

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorMessageText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    :cond_1b
    const/16 v5, 0x35

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorMessageText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1c
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasServerLogsCookie:Z

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    sget-object v6, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1d
    const/16 v5, 0x36

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1e
    iput v4, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$BuyResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->continueViaUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutServiceId:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutTokenRequired:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->baseCheckoutUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    goto :goto_0

    :sswitch_8
    const/16 v5, 0x12a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    if-nez v5, :cond_4

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionError:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionError:Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-nez v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseCookie:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->addInstrumentPromptHtml:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->confirmButtonText:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorTitleText:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorTitleText:Z

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorMessageText:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorMessageText:Z

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasServerLogsCookie:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
        0x42 -> :sswitch_3
        0x4a -> :sswitch_4
        0x62 -> :sswitch_5
        0x68 -> :sswitch_6
        0x72 -> :sswitch_7
        0x12a -> :sswitch_8
        0x130 -> :sswitch_9
        0x13a -> :sswitch_a
        0x172 -> :sswitch_b
        0x18a -> :sswitch_c
        0x192 -> :sswitch_d
        0x19a -> :sswitch_e
        0x1a2 -> :sswitch_f
        0x1aa -> :sswitch_10
        0x1b2 -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Buy$BuyResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$BuyResponse;

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

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseResponse:Lcom/google/android/finsky/protos/Buy$PurchaseNotificationResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutInfo:Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->continueViaUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->continueViaUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutServiceId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutServiceId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutTokenRequired:Z

    if-eqz v2, :cond_9

    :cond_8
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->checkoutTokenRequired:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->baseCheckoutUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->baseCheckoutUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->tosCheckboxHtml:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_c

    const/16 v2, 0x25

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    iget v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionError:I

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionError:Z

    if-eqz v2, :cond_f

    :cond_e
    const/16 v2, 0x26

    iget v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionError:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    if-eqz v2, :cond_10

    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseStatusResponse:Lcom/google/android/finsky/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseCookie:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const/16 v2, 0x2e

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->purchaseCookie:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v2, :cond_13

    const/16 v2, 0x31

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_13
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->addInstrumentPromptHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->addInstrumentPromptHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->confirmButtonText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    const/16 v2, 0x33

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->confirmButtonText:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_17
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorTitleText:Z

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorTitleText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    const/16 v2, 0x34

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorTitleText:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_19
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasPermissionErrorMessageText:Z

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorMessageText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/16 v2, 0x35

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->permissionErrorMessageText:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->hasServerLogsCookie:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    const/16 v2, 0x36

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse;->serverLogsCookie:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_1d
    return-void
.end method
