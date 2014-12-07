.class public final Lcom/google/android/finsky/protos/Containers$ContainerMetadata;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Containers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Containers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Containers$ContainerMetadata;


# instance fields
.field public analyticsCookie:Ljava/lang/String;

.field public browseUrl:Ljava/lang/String;

.field public containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

.field public estimatedResults:J

.field public hasAnalyticsCookie:Z

.field public hasBrowseUrl:Z

.field public hasEstimatedResults:Z

.field public hasNextPageUrl:Z

.field public hasOrdered:Z

.field public hasRelevance:Z

.field public nextPageUrl:Ljava/lang/String;

.field public ordered:Z

.field public relevance:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    sput-object v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasRelevance:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasOrdered:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->clear()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->relevance:D

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasRelevance:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->analyticsCookie:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasOrdered:Z

    sget-object v0, Lcom/google/android/finsky/protos/Containers$ContainerView;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasRelevance:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->relevance:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->relevance:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    if-nez v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->analyticsCookie:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->analyticsCookie:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasOrdered:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    if-eqz v3, :cond_b

    :cond_a
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    array-length v3, v3

    if-lez v3, :cond_d

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    array-length v3, v3

    if-ge v1, v3, :cond_d

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    aget-object v0, v3, v1

    if-eqz v0, :cond_c

    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    iput v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Containers$ContainerMetadata;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->relevance:D

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasRelevance:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->analyticsCookie:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasOrdered:Z

    goto :goto_0

    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Containers$ContainerView;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/Containers$ContainerView;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Containers$ContainerView;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/Containers$ContainerView;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Containers$ContainerView;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasBrowseUrl:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasNextPageUrl:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasRelevance:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->relevance:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->relevance:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasEstimatedResults:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasAnalyticsCookie:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->analyticsCookie:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->analyticsCookie:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->hasOrdered:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    array-length v2, v2

    if-lez v2, :cond_d

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    aget-object v0, v2, v1

    if-eqz v0, :cond_c

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    return-void
.end method
