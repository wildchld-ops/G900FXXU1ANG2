.class public final Lcom/google/android/finsky/protos/DocList$Bucket;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bucket"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocList$Bucket;


# instance fields
.field public analyticsCookie:Ljava/lang/String;

.field public document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

.field public estimatedResults:J

.field public fullContentsListUrl:Ljava/lang/String;

.field public fullContentsUrl:Ljava/lang/String;

.field public hasAnalyticsCookie:Z

.field public hasEstimatedResults:Z

.field public hasFullContentsListUrl:Z

.field public hasFullContentsUrl:Z

.field public hasIconUrl:Z

.field public hasMultiCorpus:Z

.field public hasNextPageUrl:Z

.field public hasOrdered:Z

.field public hasRelevance:Z

.field public hasTitle:Z

.field public iconUrl:Ljava/lang/String;

.field public multiCorpus:Z

.field public nextPageUrl:Ljava/lang/String;

.field public ordered:Z

.field public relevance:D

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocList$Bucket;

    sput-object v0, Lcom/google/android/finsky/protos/DocList$Bucket;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocList$Bucket;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasMultiCorpus:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasIconUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasNextPageUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasRelevance:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasEstimatedResults:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasOrdered:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocList$Bucket;->clear()Lcom/google/android/finsky/protos/DocList$Bucket;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocList$Bucket;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->multiCorpus:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasMultiCorpus:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->title:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->iconUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasIconUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsListUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->nextPageUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasNextPageUrl:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->relevance:D

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasRelevance:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->estimatedResults:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasEstimatedResults:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->analyticsCookie:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->ordered:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasOrdered:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    array-length v3, v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasMultiCorpus:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->multiCorpus:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->multiCorpus:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasTitle:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->title:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasIconUrl:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->iconUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->iconUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsUrl:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasRelevance:Z

    if-nez v3, :cond_a

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->relevance:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_b

    :cond_a
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->relevance:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasEstimatedResults:Z

    if-nez v3, :cond_c

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->estimatedResults:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    :cond_c
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->estimatedResults:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->analyticsCookie:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->analyticsCookie:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_f
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsListUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsListUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_11
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasNextPageUrl:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->nextPageUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->nextPageUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_13
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasOrdered:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->ordered:Z

    if-eqz v3, :cond_15

    :cond_14
    const/16 v3, 0xb

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->ordered:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_15
    iput v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocList$Bucket;
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
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV1$DocV1;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV1$DocV1;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->multiCorpus:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasMultiCorpus:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->title:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasTitle:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->iconUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasIconUrl:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsUrl:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->relevance:D

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasRelevance:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->estimatedResults:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasEstimatedResults:Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->analyticsCookie:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsListUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->nextPageUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasNextPageUrl:Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->ordered:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasOrdered:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x31 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocList$Bucket;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocList$Bucket;

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

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->document:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasMultiCorpus:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->multiCorpus:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->multiCorpus:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasTitle:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->title:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasIconUrl:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->iconUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsUrl:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasRelevance:Z

    if-nez v2, :cond_a

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->relevance:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->relevance:D

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasEstimatedResults:Z

    if-nez v2, :cond_c

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->estimatedResults:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d

    :cond_c
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->estimatedResults:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->analyticsCookie:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->analyticsCookie:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasFullContentsListUrl:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsListUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->fullContentsListUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasNextPageUrl:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->nextPageUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->nextPageUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->hasOrdered:Z

    if-nez v2, :cond_14

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->ordered:Z

    if-eqz v2, :cond_15

    :cond_14
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocList$Bucket;->ordered:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_15
    return-void
.end method
