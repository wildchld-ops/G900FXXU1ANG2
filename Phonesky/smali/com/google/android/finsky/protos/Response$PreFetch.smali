.class public final Lcom/google/android/finsky/protos/Response$PreFetch;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreFetch"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$PreFetch;


# instance fields
.field public etag:Ljava/lang/String;

.field public hasEtag:Z

.field public hasResponse:Z

.field public hasSoftTtl:Z

.field public hasTtl:Z

.field public hasUrl:Z

.field public response:[B

.field public softTtl:J

.field public ttl:J

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Response$PreFetch;

    sput-object v0, Lcom/google/android/finsky/protos/Response$PreFetch;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$PreFetch;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasResponse:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasEtag:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasTtl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasSoftTtl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Response$PreFetch;->clear()Lcom/google/android/finsky/protos/Response$PreFetch;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Response$PreFetch;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasUrl:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasResponse:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasEtag:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasTtl:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasSoftTtl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasResponse:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasEtag:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasTtl:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasSoftTtl:Z

    if-nez v1, :cond_8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$PreFetch;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasResponse:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasEtag:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasTtl:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasSoftTtl:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Response$PreFetch;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$PreFetch;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasResponse:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->response:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasEtag:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->etag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasTtl:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->ttl:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->hasSoftTtl:Z

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Response$PreFetch;->softTtl:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_9
    return-void
.end method
