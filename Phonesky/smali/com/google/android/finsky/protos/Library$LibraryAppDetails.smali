.class public final Lcom/google/android/finsky/protos/Library$LibraryAppDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryAppDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryAppDetails;


# instance fields
.field public certificateHash:[Ljava/lang/String;

.field public hasPostDeliveryRefundWindowMsec:Z

.field public hasRefundTimeoutTimestampMsec:Z

.field public postDeliveryRefundWindowMsec:J

.field public refundTimeoutTimestampMsec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    sput-object v0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->clear()Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Library$LibraryAppDetails;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 10

    const-wide/16 v8, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    if-nez v5, :cond_3

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_4

    :cond_3
    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    if-nez v5, :cond_5

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_6

    :cond_5
    const/4 v5, 0x4

    iget-wide v6, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    iput v4, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Library$LibraryAppDetails;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

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
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Library$LibraryAppDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->certificateHash:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    return-void
.end method
