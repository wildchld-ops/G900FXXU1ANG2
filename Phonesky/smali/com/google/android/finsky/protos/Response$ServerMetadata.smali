.class public final Lcom/google/android/finsky/protos/Response$ServerMetadata;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$ServerMetadata;


# instance fields
.field public hasLatencyMillis:Z

.field public latencyMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Response$ServerMetadata;

    sput-object v0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Response$ServerMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->hasLatencyMillis:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Response$ServerMetadata;->clear()Lcom/google/android/finsky/protos/Response$ServerMetadata;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Response$ServerMetadata;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->hasLatencyMillis:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->hasLatencyMillis:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$ServerMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->hasLatencyMillis:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Response$ServerMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Response$ServerMetadata;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->hasLatencyMillis:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Response$ServerMetadata;->latencyMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    return-void
.end method
