.class public final Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;
.super Lcom/google/protobuf/nano/MessageNano;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptionParams"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;


# instance fields
.field public encryptionKey:Ljava/lang/String;

.field public hasEncryptionKey:Z

.field public hasHmacKey:Z

.field public hasVersion:Z

.field public hmacKey:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    sput-object v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->clear()Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

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

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasVersion:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->version:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasEncryptionKey:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->encryptionKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hasHmacKey:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;->hmacKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
