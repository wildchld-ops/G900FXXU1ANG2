.class public final Lcom/google/android/finsky/protos/Search$SearchResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Search$SearchResponse;


# instance fields
.field public aggregateQuery:Z

.field public bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

.field public doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field public hasAggregateQuery:Z

.field public hasOriginalQuery:Z

.field public hasServerLogsCookie:Z

.field public hasSuggestedQuery:Z

.field public originalQuery:Ljava/lang/String;

.field public relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

.field public serverLogsCookie:[B

.field public suggestedQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Search$SearchResponse;

    sput-object v0, Lcom/google/android/finsky/protos/Search$SearchResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Search$SearchResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasOriginalQuery:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasAggregateQuery:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Search$SearchResponse;->clear()Lcom/google/android/finsky/protos/Search$SearchResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Search$SearchResponse;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->originalQuery:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasOriginalQuery:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasAggregateQuery:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocList$Bucket;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocList$Bucket;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    sget-object v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    sget-object v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasOriginalQuery:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->originalQuery:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->originalQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasAggregateQuery:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    array-length v3, v3

    if-lez v3, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    aget-object v0, v3, v1

    if-eqz v0, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-lez v3, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v3, v1

    if-eqz v0, :cond_8

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    array-length v3, v3

    if-lez v3, :cond_b

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    aget-object v0, v3, v1

    if-eqz v0, :cond_a

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasServerLogsCookie:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    sget-object v4, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iput v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Search$SearchResponse;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->originalQuery:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasOriginalQuery:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasAggregateQuery:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocList$Bucket;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocList$Bucket;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocList$Bucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/DocList$Bucket;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocList$Bucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v5

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Search$RelatedSearch;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/Search$RelatedSearch;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Search$RelatedSearch;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    array-length v1, v5

    goto :goto_5

    :cond_9
    new-instance v5, Lcom/google/android/finsky/protos/Search$RelatedSearch;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Search$RelatedSearch;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasServerLogsCookie:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Search$SearchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Search$SearchResponse;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasOriginalQuery:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->originalQuery:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->originalQuery:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasSuggestedQuery:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasAggregateQuery:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    array-length v2, v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->bucket:[Lcom/google/android/finsky/protos/DocList$Bucket;

    aget-object v0, v2, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-lez v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v2, v1

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    array-length v2, v2

    if-lez v2, :cond_b

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    aget-object v0, v2, v1

    if-eqz v0, :cond_a

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->hasServerLogsCookie:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_d
    return-void
.end method
