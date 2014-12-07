.class public final Lcom/google/android/finsky/protos/CommonDevice$Instrument;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instrument"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;


# instance fields
.field public billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

.field public billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

.field public carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

.field public carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

.field public creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

.field public disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

.field public displayTitle:Ljava/lang/String;

.field public externalInstrumentId:Ljava/lang/String;

.field public hasDisplayTitle:Z

.field public hasExternalInstrumentId:Z

.field public hasInstrumentFamily:Z

.field public hasVersion:Z

.field public instrumentFamily:I

.field public storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

.field public topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasExternalInstrumentId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasVersion:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->clear()Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasExternalInstrumentId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    iput v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    iput v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->version:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasVersion:Z

    sget-object v0, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasExternalInstrumentId:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-eqz v3, :cond_8

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_a
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-eqz v3, :cond_b

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasVersion:Z

    if-nez v3, :cond_c

    iget v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->version:I

    if-eqz v3, :cond_d

    :cond_c
    const/16 v3, 0xa

    iget v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->version:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    if-eqz v3, :cond_e

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_e
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v3, v3

    if-lez v3, :cond_10

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_10

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    aget-object v0, v3, v1

    if-eqz v0, :cond_f

    const/16 v3, 0xc

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_10
    iput v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;
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

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasExternalInstrumentId:Z

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/BillingAddress$Address;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    if-nez v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    goto :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    goto :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-nez v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->version:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasVersion:Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v5, 0x62

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    if-nez v5, :cond_9

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v1, v5

    goto :goto_1

    :cond_a
    new-instance v5, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

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
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasExternalInstrumentId:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-eqz v2, :cond_8

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasDisplayTitle:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-eqz v2, :cond_b

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->topupInfoDeprecated:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasVersion:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->version:I

    if-eqz v2, :cond_d

    :cond_c
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->version:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    if-eqz v2, :cond_e

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v2, v2

    if-lez v2, :cond_10

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->disabledInfo:[Lcom/google/android/finsky/protos/CommonDevice$DisabledInfo;

    aget-object v0, v2, v1

    if-eqz v0, :cond_f

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_10
    return-void
.end method
