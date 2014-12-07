.class public final Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingProfileOption"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;


# instance fields
.field public carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

.field public displayTitle:Ljava/lang/String;

.field public externalInstrumentId:Ljava/lang/String;

.field public hasDisplayTitle:Z

.field public hasExternalInstrumentId:Z

.field public hasType:Z

.field public topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasDisplayTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasExternalInstrumentId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->clear()Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasDisplayTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->externalInstrumentId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasExternalInstrumentId:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasDisplayTitle:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasExternalInstrumentId:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->externalInstrumentId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->externalInstrumentId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;
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

    iput v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasDisplayTitle:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->externalInstrumentId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasExternalInstrumentId:Z

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

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

    iget v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasType:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasDisplayTitle:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->hasExternalInstrumentId:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->externalInstrumentId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->externalInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    return-void
.end method
