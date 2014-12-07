.class public final Lcom/google/android/finsky/protos/Rating$AggregateRating;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Rating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregateRating"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Rating$AggregateRating;


# instance fields
.field public bayesianMeanRating:D

.field public commentCount:J

.field public fiveStarRatings:J

.field public fourStarRatings:J

.field public hasBayesianMeanRating:Z

.field public hasCommentCount:Z

.field public hasFiveStarRatings:Z

.field public hasFourStarRatings:Z

.field public hasOneStarRatings:Z

.field public hasRatingsCount:Z

.field public hasStarRating:Z

.field public hasThreeStarRatings:Z

.field public hasThumbsDownCount:Z

.field public hasThumbsUpCount:Z

.field public hasTwoStarRatings:Z

.field public hasType:Z

.field public oneStarRatings:J

.field public ratingsCount:J

.field public starRating:F

.field public threeStarRatings:J

.field public thumbsDownCount:J

.field public thumbsUpCount:J

.field public twoStarRatings:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Rating$AggregateRating;

    sput-object v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Rating$AggregateRating;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasStarRating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasRatingsCount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasCommentCount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Rating$AggregateRating;->clear()Lcom/google/android/finsky/protos/Rating$AggregateRating;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Rating$AggregateRating;
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->type:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasType:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasStarRating:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasRatingsCount:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->commentCount:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasCommentCount:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->bayesianMeanRating:D

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsUpCount:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsDownCount:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasStarRating:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasRatingsCount:Z

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    if-nez v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    if-nez v1, :cond_8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    if-nez v1, :cond_a

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    if-nez v1, :cond_c

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_d

    :cond_c
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    if-nez v1, :cond_e

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsUpCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_f

    :cond_e
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsUpCount:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    if-nez v1, :cond_10

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsDownCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_11

    :cond_10
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsDownCount:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasCommentCount:Z

    if-nez v1, :cond_12

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->commentCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_13

    :cond_12
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->commentCount:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    if-nez v1, :cond_14

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->bayesianMeanRating:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_15

    :cond_14
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->bayesianMeanRating:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iput v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Rating$AggregateRating;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->type:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasStarRating:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasRatingsCount:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsUpCount:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsDownCount:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->commentCount:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasCommentCount:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->bayesianMeanRating:D

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x61 -> :sswitch_c
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Rating$AggregateRating;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Rating$AggregateRating;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasStarRating:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasRatingsCount:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasOneStarRatings:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasTwoStarRatings:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThreeStarRatings:Z

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFourStarRatings:Z

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasFiveStarRatings:Z

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_d

    :cond_c
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsUpCount:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsUpCount:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsUpCount:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasThumbsDownCount:Z

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsDownCount:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_11

    :cond_10
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->thumbsDownCount:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasCommentCount:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->commentCount:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_13

    :cond_12
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->commentCount:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->hasBayesianMeanRating:Z

    if-nez v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->bayesianMeanRating:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_15

    :cond_14
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->bayesianMeanRating:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_15
    return-void
.end method
