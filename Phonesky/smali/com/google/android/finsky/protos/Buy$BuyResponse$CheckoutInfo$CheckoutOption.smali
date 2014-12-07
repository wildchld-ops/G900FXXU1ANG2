.class public final Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckoutOption"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;


# instance fields
.field public disabledReason:[Ljava/lang/String;

.field public encodedAdjustedCart:Ljava/lang/String;

.field public footerHtml:[Ljava/lang/String;

.field public footnoteHtml:[Ljava/lang/String;

.field public formOfPayment:Ljava/lang/String;

.field public hasEncodedAdjustedCart:Z

.field public hasFormOfPayment:Z

.field public hasInstrumentFamily:Z

.field public hasInstrumentId:Z

.field public hasPurchaseCookie:Z

.field public hasSelectedInstrument:Z

.field public instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field public instrumentFamily:I

.field public instrumentId:Ljava/lang/String;

.field public item:[Lcom/google/android/finsky/protos/Buy$LineItem;

.field public purchaseCookie:Ljava/lang/String;

.field public selectedInstrument:Z

.field public subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

.field public summary:Lcom/google/android/finsky/protos/Buy$LineItem;

.field public total:Lcom/google/android/finsky/protos/Buy$LineItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    sput-object v0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->clear()Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    sget-object v0, Lcom/google/android/finsky/protos/Buy$LineItem;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$LineItem;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    sget-object v0, Lcom/google/android/finsky/protos/Buy$LineItem;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$LineItem;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v5, v5

    if-lez v5, :cond_7

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    aget-object v2, v5, v3

    if-eqz v2, :cond_6

    const/16 v5, 0x10

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    aget-object v2, v5, v3

    if-eqz v2, :cond_8

    const/16 v5, 0x11

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v5, :cond_a

    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_d
    iget v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily:I

    if-nez v5, :cond_e

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily:Z

    if-eqz v5, :cond_f

    :cond_e
    const/16 v5, 0x1d

    iget v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_f
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument:Z

    if-eqz v5, :cond_11

    :cond_10
    const/16 v5, 0x20

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v5, :cond_12

    const/16 v5, 0x21

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_14
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_15
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v5, :cond_16

    const/16 v5, 0x2b

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_16
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    const/16 v5, 0x2d

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_18
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1b

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1a

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1a
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_1b
    iput v4, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v4, 0x0

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

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x82

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v1, v5

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v5, 0x9a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    if-nez v5, :cond_9

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-nez v5, :cond_b

    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x11a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    if-nez v5, :cond_d

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_e

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-nez v5, :cond_f

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    goto/16 :goto_0

    :sswitch_e
    const/16 v5, 0x182

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    if-nez v5, :cond_11

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_12

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_9

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_1
        0x3a -> :sswitch_2
        0x7a -> :sswitch_3
        0x82 -> :sswitch_4
        0x8a -> :sswitch_5
        0x92 -> :sswitch_6
        0x9a -> :sswitch_7
        0xe8 -> :sswitch_8
        0x100 -> :sswitch_9
        0x10a -> :sswitch_a
        0x11a -> :sswitch_b
        0x15a -> :sswitch_c
        0x16a -> :sswitch_d
        0x182 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasFormOfPayment:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->formOfPayment:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasEncodedAdjustedCart:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->encodedAdjustedCart:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentId:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v2, v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->item:[Lcom/google/android/finsky/protos/Buy$LineItem;

    aget-object v0, v2, v1

    if-eqz v0, :cond_6

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v2, v2

    if-lez v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    aget-object v0, v2, v1

    if-eqz v0, :cond_8

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v2, :cond_a

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->total:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_c

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footerHtml:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_b

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    iget v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily:I

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrumentFamily:Z

    if-eqz v2, :cond_e

    :cond_d
    const/16 v2, 0x1d

    iget v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrumentFamily:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasSelectedInstrument:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument:Z

    if-eqz v2, :cond_10

    :cond_f
    const/16 v2, 0x20

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->selectedInstrument:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_10
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v2, :cond_11

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->summary:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_11
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_13

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->footnoteHtml:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_12

    const/16 v2, 0x23

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v2, :cond_14

    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_14
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasPurchaseCookie:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->purchaseCookie:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_16
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_18

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->disabledReason:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_17

    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-void
.end method
