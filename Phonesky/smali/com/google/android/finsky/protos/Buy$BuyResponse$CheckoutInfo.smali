.class public final Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Buy$BuyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckoutInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;


# instance fields
.field public addInstrumentUrl:Ljava/lang/String;

.field public checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

.field public deprecatedCheckoutUrl:Ljava/lang/String;

.field public eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field public eligibleInstrumentFamily:[I

.field public footerHtml:[Ljava/lang/String;

.field public footnoteHtml:[Ljava/lang/String;

.field public hasAddInstrumentUrl:Z

.field public hasDeprecatedCheckoutUrl:Z

.field public item:Lcom/google/android/finsky/protos/Buy$LineItem;

.field public subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    sput-object v0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->clear()Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    sget-object v0, Lcom/google/android/finsky/protos/Buy$LineItem;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$LineItem;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    sget-object v0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    sget-object v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 10

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v8, v8

    if-lez v8, :cond_2

    const/4 v4, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    aget-object v3, v8, v4

    if-eqz v3, :cond_1

    const/4 v8, 0x4

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    array-length v8, v8

    if-lez v8, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    array-length v8, v8

    if-ge v4, v8, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    aget-object v3, v8, v4

    if-eqz v3, :cond_3

    const/4 v8, 0x5

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    const/16 v8, 0xa

    iget-object v9, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_6
    iget-boolean v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    const/16 v8, 0xb

    iget-object v9, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_8
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_a

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    aget-object v3, v8, v4

    if-eqz v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v2, v8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v7, v2

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v7, v8

    :cond_b
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    array-length v8, v8

    if-lez v8, :cond_d

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_c

    aget v3, v0, v5

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    :cond_d
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_f

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    aget-object v3, v8, v4

    if-eqz v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v2, v8

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    add-int/2addr v7, v2

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v7, v8

    :cond_10
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    array-length v8, v8

    if-lez v8, :cond_12

    const/4 v4, 0x0

    :goto_5
    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    array-length v8, v8

    if-ge v4, v8, :cond_12

    iget-object v8, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    aget-object v3, v8, v4

    if-eqz v3, :cond_11

    const/16 v8, 0x2c

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_12
    iput v7, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->cachedSize:I

    return v7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x5

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-nez v5, :cond_3

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v1, v5

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$LineItem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x2b

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    array-length v1, v5

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    goto/16 :goto_0

    :sswitch_6
    const/16 v5, 0xa2

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    if-nez v5, :cond_9

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    const/16 v5, 0xf8

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    if-nez v5, :cond_c

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [I

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    array-length v1, v5

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    goto/16 :goto_0

    :sswitch_8
    const/16 v5, 0x122

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    if-nez v5, :cond_f

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_10

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x162

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-nez v5, :cond_12

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v1, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_13

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    array-length v1, v5

    goto :goto_b

    :cond_13
    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2b -> :sswitch_3
        0x52 -> :sswitch_4
        0x5a -> :sswitch_5
        0xa2 -> :sswitch_6
        0xf8 -> :sswitch_7
        0x122 -> :sswitch_8
        0x162 -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->item:Lcom/google/android/finsky/protos/Buy$LineItem;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v5, v5

    if-lez v5, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->subItem:[Lcom/google/android/finsky/protos/Buy$LineItem;

    aget-object v1, v5, v2

    if-eqz v1, :cond_1

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    array-length v5, v5

    if-lez v5, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->checkoutOption:[Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    aget-object v1, v5, v2

    if-eqz v1, :cond_3

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasDeprecatedCheckoutUrl:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->deprecatedCheckoutUrl:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->hasAddInstrumentUrl:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->addInstrumentUrl:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_a

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footerHtml:[Ljava/lang/String;

    aget-object v1, v5, v2

    if-eqz v1, :cond_9

    const/16 v5, 0x14

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    array-length v5, v5

    if-lez v5, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrumentFamily:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_b

    aget v1, v0, v3

    const/16 v5, 0x1f

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_d

    const/4 v2, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->footnoteHtml:[Ljava/lang/String;

    aget-object v1, v5, v2

    if-eqz v1, :cond_c

    const/16 v5, 0x24

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    array-length v5, v5

    if-lez v5, :cond_f

    const/4 v2, 0x0

    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    array-length v5, v5

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Buy$BuyResponse$CheckoutInfo;->eligibleInstrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    aget-object v1, v5, v2

    if-eqz v1, :cond_e

    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method
