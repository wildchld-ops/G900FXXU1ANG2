.class public final Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LibraryReplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/LibraryReplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientLibraryState"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;


# instance fields
.field public corpus:I

.field public hasCorpus:Z

.field public hasHashCodeSum:Z

.field public hasLibraryId:Z

.field public hasLibrarySize:Z

.field public hasServerToken:Z

.field public hashCodeSum:J

.field public libraryId:Ljava/lang/String;

.field public librarySize:I

.field public serverToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    sput-object v0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->clear()Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->corpus:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasCorpus:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hashCodeSum:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum:Z

    iput v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->corpus:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hashCodeSum:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->corpus:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasCorpus:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hashCodeSum:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasHashCodeSum:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->corpus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasServerToken:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->serverToken:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_1
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hashCodeSum:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibrarySize:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->librarySize:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->hasLibraryId:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->libraryId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
