.class public final Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PromoCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/PromoCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemCodeRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;


# instance fields
.field public address:Lcom/google/android/finsky/protos/BillingAddress$Address;

.field public addressCheckedCheckboxId:[Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public hasCode:Z

.field public hasHasUserConfirmation:Z

.field public hasRedemptionContext:Z

.field public hasToken:Z

.field public hasUserConfirmation:Z

.field public redemptionContext:I

.field public token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    sput-object v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasHasUserConfirmation:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->clear()Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasCode:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasHasUserConfirmation:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasRedemptionContext:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasCode:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasHasUserConfirmation:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_7
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    if-ne v5, v7, :cond_a

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasRedemptionContext:Z

    if-eqz v5, :cond_b

    :cond_a
    const/4 v5, 0x6

    iget v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iput v4, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasCode:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasHasUserConfirmation:Z

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/BillingAddress$Address;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    if-nez v5, :cond_3

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasRedemptionContext:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasCode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasHasUserConfirmation:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8
    iget v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    if-ne v2, v4, :cond_9

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasRedemptionContext:Z

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    return-void
.end method
