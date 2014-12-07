.class public final Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEvent"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;


# instance fields
.field private cachedSize:I

.field public eventTimeMs:J

.field public exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

.field public sourceExtension:[B

.field public sourceExtensionJs:[B

.field public tag:Ljava/lang/String;

.field public value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    sput-object v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    sget-object v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    sget-object v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->cachedSize:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v6, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    if-eqz v5, :cond_4

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    sget-object v6, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iput v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x1a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    :goto_1
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    new-instance v5, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    invoke-direct {v5}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    new-instance v5, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    invoke-direct {v5}, Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    goto :goto_0

    :sswitch_5
    new-instance v4, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-direct {v4}, Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;-><init>()V

    iput-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->eventTimeMs:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->value:[Lcom/google/android/play/analytics/ClientAnalytics$LogEventKeyValues;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v5, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtension:[B

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_3
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->exp:Lcom/google/android/play/analytics/ClientAnalytics$ActiveExperiments;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    sget-object v5, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_5
    return-void
.end method
