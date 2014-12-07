.class public final Lcom/google/android/finsky/protos/Purchase$ClientCart;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientCart"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Purchase$ClientCart;


# instance fields
.field public addInstrumentPromptHtml:Ljava/lang/String;

.field public buttonText:Ljava/lang/String;

.field public completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

.field public detailHtml:[Ljava/lang/String;

.field public extendedDetailHtml:[Ljava/lang/String;

.field public footerHtml:Ljava/lang/String;

.field public formattedPrice:Ljava/lang/String;

.field public hasAddInstrumentPromptHtml:Z

.field public hasButtonText:Z

.field public hasFooterHtml:Z

.field public hasFormattedPrice:Z

.field public hasPriceByline:Z

.field public hasPurchaseContextToken:Z

.field public hasTitle:Z

.field public instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field public priceByline:Ljava/lang/String;

.field public purchaseContextToken:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Purchase$ClientCart;

    sput-object v0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Purchase$ClientCart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFormattedPrice:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPriceByline:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPurchaseContextToken:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFooterHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasAddInstrumentPromptHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasButtonText:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Purchase$ClientCart;->clear()Lcom/google/android/finsky/protos/Purchase$ClientCart;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Purchase$ClientCart;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFormattedPrice:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPriceByline:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPurchaseContextToken:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFooterHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasAddInstrumentPromptHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasButtonText:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasTitle:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFormattedPrice:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPurchaseContextToken:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v5, :cond_6

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_9
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFooterHtml:Z

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasAddInstrumentPromptHtml:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_d
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasButtonText:Z

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v5, :cond_10

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_10
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPriceByline:Z

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_14
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_15
    iput v4, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Purchase$ClientCart;
    .locals 7
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

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasTitle:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFormattedPrice:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPurchaseContextToken:Z

    goto :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    if-nez v5, :cond_3

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFooterHtml:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasAddInstrumentPromptHtml:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasButtonText:Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPriceByline:Z

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    if-nez v5, :cond_7

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    goto/16 :goto_0

    nop

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
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Purchase$ClientCart;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Purchase$ClientCart;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasTitle:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFormattedPrice:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->formattedPrice:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPurchaseContextToken:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->extendedDetailHtml:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasFooterHtml:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->footerHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasAddInstrumentPromptHtml:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->addInstrumentPromptHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasButtonText:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->buttonText:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    if-eqz v2, :cond_f

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->completePurchaseChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->hasPriceByline:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->priceByline:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11
    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_13

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Purchase$ClientCart;->detailHtml:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_12

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method
