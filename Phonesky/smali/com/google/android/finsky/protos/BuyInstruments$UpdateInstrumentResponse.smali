.class public final Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateInstrumentResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;


# instance fields
.field public checkoutTokenRequired:Z

.field public errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

.field public hasCheckoutTokenRequired:Z

.field public hasInstrumentId:Z

.field public hasResult:Z

.field public hasUserMessageHtml:Z

.field public instrumentId:Ljava/lang/String;

.field public redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

.field public result:I

.field public userMessageHtml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    sput-object v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->clear()Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    sget-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    iput-object v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v3, v3

    if-lez v3, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    aget-object v0, v3, v1

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    iput v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasResult:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    goto :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasInstrumentId:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->instrumentId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    aget-object v0, v2, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasCheckoutTokenRequired:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    if-eqz v2, :cond_8

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    return-void
.end method
