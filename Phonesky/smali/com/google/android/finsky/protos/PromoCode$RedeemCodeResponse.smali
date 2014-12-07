.class public final Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PromoCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/PromoCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemCodeResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;


# instance fields
.field public addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

.field public errorMessageHtml:Ljava/lang/String;

.field public hasErrorMessageHtml:Z

.field public hasResult:Z

.field public hasToken:Z

.field public redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

.field public result:I

.field public token:Ljava/lang/String;

.field public userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    sput-object v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasToken:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasErrorMessageHtml:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->clear()Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasResult:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasToken:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iput-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iput-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasErrorMessageHtml:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasResult:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasToken:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasErrorMessageHtml:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

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

    iput v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasResult:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasToken:Z

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasErrorMessageHtml:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

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

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasResult:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasToken:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasErrorMessageHtml:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8
    return-void
.end method
