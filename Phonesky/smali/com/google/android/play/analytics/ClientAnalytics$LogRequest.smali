.class public final Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;


# instance fields
.field private cachedSize:I

.field public clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

.field public logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

.field public logSource:I

.field public requestTimeMs:J

.field public serializedLogEvents:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    sput-object v0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    iput v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I

    sget-object v0, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    iput v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 10

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_0
    iget v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v6, 0x2

    iget v7, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    const/4 v6, 0x3

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    iget-wide v7, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    :cond_3
    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    array-length v6, v6

    if-lez v6, :cond_5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_5
    iput v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->cachedSize:I

    return v5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    new-instance v4, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-direct {v4}, Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;-><init>()V

    iput-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x1a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    :goto_1
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    new-instance v5, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-direct {v5}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    new-instance v5, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    invoke-direct {v5}, Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    goto :goto_0

    :sswitch_5
    const/16 v4, 0x2a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [[B

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    :goto_2
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v4, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->clientInfo:Lcom/google/android/play/analytics/ClientAnalytics$ClientInfo;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logSource:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->logEvent:[Lcom/google/android/play/analytics/ClientAnalytics$LogEvent;

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
    iget-wide v4, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    iget-wide v5, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->requestTimeMs:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogRequest;->serializedLogEvents:[[B

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
