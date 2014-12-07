.class public final Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ClientAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidClientInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;


# instance fields
.field public androidId:J

.field public applicationBuild:Ljava/lang/String;

.field private cachedSize:I

.field public country:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public hardware:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public loggingId:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public mccMnc:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public osBuild:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public sdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    sput-object v0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->EMPTY_ARRAY:[Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->manufacturer:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->manufacturer:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->manufacturer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iput v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;
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

    iput-wide v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->manufacturer:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;

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

    iget-wide v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->androidId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->loggingId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->sdkVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->product:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->osBuild:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->hardware:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->device:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->manufacturer:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/play/analytics/ClientAnalytics$AndroidClientInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    return-void
.end method
