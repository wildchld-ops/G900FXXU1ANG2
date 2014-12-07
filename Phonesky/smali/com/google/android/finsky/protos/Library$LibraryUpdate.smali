.class public final Lcom/google/android/finsky/protos/Library$LibraryUpdate;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryUpdate"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryUpdate;


# instance fields
.field public corpus:I

.field public hasCorpus:Z

.field public hasHasMore:Z

.field public hasLibraryId:Z

.field public hasMore:Z

.field public hasServerToken:Z

.field public hasStatus:Z

.field public libraryId:Ljava/lang/String;

.field public mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

.field public serverToken:[B

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    sput-object v0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasLibraryId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasServerToken:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasHasMore:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->clear()Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Library$LibraryUpdate;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->status:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasStatus:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasCorpus:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasLibraryId:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasServerToken:Z

    sget-object v0, Lcom/google/android/finsky/protos/Library$LibraryMutation;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasHasMore:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->status:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasCorpus:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasServerToken:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    sget-object v4, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v3, v3

    if-lez v3, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    aget-object v0, v3, v1

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasHasMore:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasLibraryId:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    iput v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Library$LibraryUpdate;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->status:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasStatus:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasCorpus:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasServerToken:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Library$LibraryMutation;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Library$LibraryMutation;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/Library$LibraryMutation;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Library$LibraryMutation;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasHasMore:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasLibraryId:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Library$LibraryUpdate;

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

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->status:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasCorpus:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->corpus:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasServerToken:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->serverToken:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->mutation:[Lcom/google/android/finsky/protos/Library$LibraryMutation;

    aget-object v0, v2, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasHasMore:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasMore:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->hasLibraryId:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/Library$LibraryUpdate;->libraryId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method
