.class public final Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingInstrument"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;


# instance fields
.field public acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

.field public accountType:Ljava/lang/String;

.field public credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

.field public currencyCode:Ljava/lang/String;

.field public encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

.field public hasAccountType:Z

.field public hasCurrencyCode:Z

.field public hasInstrumentKey:Z

.field public hasSubscriberIdentifier:Z

.field public hasTransactionLimit:Z

.field public instrumentKey:Ljava/lang/String;

.field public subscriberIdentifier:Ljava/lang/String;

.field public transactionLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->clear()Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    iput-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    iput-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    iput-object v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    if-eqz v1, :cond_b

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    if-eqz v0, :cond_b

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    return-void
.end method
