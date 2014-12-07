.class public final Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "EncryptedSubscriberInfo.java"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;


# instance fields
.field public carrierKeyVersion:I

.field public data:Ljava/lang/String;

.field public encryptedKey:Ljava/lang/String;

.field public googleKeyVersion:I

.field public hasCarrierKeyVersion:Z

.field public hasData:Z

.field public hasEncryptedKey:Z

.field public hasGoogleKeyVersion:Z

.field public hasInitVector:Z

.field public hasSignature:Z

.field public initVector:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    sput-object v0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasData:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasSignature:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->clear()Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasData:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasSignature:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    iput v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    iput v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasData:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasSignature:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasData:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasSignature:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->encryptedKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasSignature:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->initVector:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->googleKeyVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;->carrierKeyVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    return-void
.end method
