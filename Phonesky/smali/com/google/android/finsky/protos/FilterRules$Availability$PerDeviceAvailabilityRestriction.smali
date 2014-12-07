.class public final Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
.super Lcom/google/protobuf/nano/MessageNano;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/FilterRules$Availability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerDeviceAvailabilityRestriction"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;


# instance fields
.field public androidId:J

.field public channelId:J

.field public deviceRestriction:I

.field public filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

.field public hasAndroidId:Z

.field public hasChannelId:Z

.field public hasDeviceRestriction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    sput-object v0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->clear()Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    if-eqz v1, :cond_4

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x51 -> :sswitch_1
        0x58 -> :sswitch_2
        0x60 -> :sswitch_3
        0x7a -> :sswitch_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

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

    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    iget v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    return-void
.end method
