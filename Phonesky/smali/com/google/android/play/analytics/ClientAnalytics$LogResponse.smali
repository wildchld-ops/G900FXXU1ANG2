.class public final Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;


# instance fields
.field private cachedSize:I

.field public experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

.field public nextRequestWaitMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;

    sput-object v0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->cachedSize:I

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;

    invoke-direct {v0}, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;
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

    iput-wide v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    invoke-direct {v1}, Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;-><init>()V

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;

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

    iget-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->nextRequestWaitMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$LogResponse;->experiments:Lcom/google/android/play/analytics/ClientAnalytics$ExperimentIdList;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    return-void
.end method
