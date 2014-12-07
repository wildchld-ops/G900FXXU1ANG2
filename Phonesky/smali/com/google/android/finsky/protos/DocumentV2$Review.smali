.class public final Lcom/google/android/finsky/protos/DocumentV2$Review;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Review"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Review;


# instance fields
.field public author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field public authorName:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public commentId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public documentVersion:Ljava/lang/String;

.field public hasAuthorName:Z

.field public hasComment:Z

.field public hasCommentId:Z

.field public hasDeviceName:Z

.field public hasDocumentVersion:Z

.field public hasReplyText:Z

.field public hasReplyTimestampMsec:Z

.field public hasSource:Z

.field public hasStarRating:Z

.field public hasTimestampMsec:Z

.field public hasTitle:Z

.field public hasUrl:Z

.field public oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

.field public replyText:Ljava/lang/String;

.field public replyTimestampMsec:J

.field public source:Ljava/lang/String;

.field public starRating:I

.field public timestampMsec:J

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$Review;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Review;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasCommentId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasComment:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasSource:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDocumentVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDeviceName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasAuthorName:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$Review;->clear()Lcom/google/android/finsky/protos/DocumentV2$Review;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$Review;
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasCommentId:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasComment:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasSource:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDocumentVersion:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDeviceName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->authorName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasAuthorName:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasAuthorName:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->authorName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->authorName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasUrl:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasSource:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDocumentVersion:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    if-nez v1, :cond_8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTitle:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasComment:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasCommentId:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDeviceName:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_17

    :cond_16
    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-eqz v1, :cond_18

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v1, :cond_19

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Review;
    .locals 4
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->authorName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasAuthorName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasUrl:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasSource:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDocumentVersion:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTitle:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasComment:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasCommentId:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDeviceName:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    goto :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x9a -> :sswitch_a
        0xea -> :sswitch_b
        0xf0 -> :sswitch_c
        0xfa -> :sswitch_d
        0x10a -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$Review;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasAuthorName:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->authorName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->authorName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasUrl:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasSource:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDocumentVersion:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTimestampMsec:Z

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->timestampMsec:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasStarRating:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasTitle:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasComment:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasCommentId:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasDeviceName:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyText:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->hasReplyTimestampMsec:Z

    if-nez v0, :cond_16

    iget-wide v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_17

    :cond_16
    const/16 v0, 0x1e

    iget-wide v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->replyTimestampMsec:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    if-eqz v0, :cond_18

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->oBSOLETEPlusProfile:Lcom/google/android/finsky/protos/PlusData$OBSOLETE_PlusProfile;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v0, :cond_19

    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_19
    return-void
.end method
