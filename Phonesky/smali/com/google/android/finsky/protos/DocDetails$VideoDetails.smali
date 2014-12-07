.class public final Lcom/google/android/finsky/protos/DocDetails$VideoDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoDetails;


# instance fields
.field public audioLanguage:[Ljava/lang/String;

.field public captionLanguage:[Ljava/lang/String;

.field public contentRating:Ljava/lang/String;

.field public credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

.field public dislikes:J

.field public duration:Ljava/lang/String;

.field public genre:[Ljava/lang/String;

.field public hasContentRating:Z

.field public hasDislikes:Z

.field public hasDuration:Z

.field public hasLikes:Z

.field public hasReleaseDate:Z

.field public likes:J

.field public releaseDate:Ljava/lang/String;

.field public rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

.field public trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDuration:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasContentRating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasLikes:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDislikes:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->clear()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDuration:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasContentRating:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->likes:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasLikes:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->dislikes:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDislikes:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$Trailer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 10

    const-wide/16 v8, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    array-length v5, v5

    if-lez v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    aget-object v2, v5, v3

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDuration:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasContentRating:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasLikes:Z

    if-nez v5, :cond_8

    iget-wide v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->likes:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_9

    :cond_8
    const/4 v5, 0x5

    iget-wide v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->likes:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDislikes:Z

    if-nez v5, :cond_a

    iget-wide v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->dislikes:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_b

    :cond_a
    const/4 v5, 0x6

    iget-wide v6, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->dislikes:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    array-length v5, v5

    if-lez v5, :cond_10

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    array-length v5, v5

    if-ge v3, v5, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    aget-object v2, v5, v3

    if-eqz v2, :cond_f

    const/16 v5, 0x8

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_10
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    array-length v5, v5

    if-lez v5, :cond_12

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    array-length v5, v5

    if-ge v3, v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    aget-object v2, v5, v3

    if-eqz v2, :cond_11

    const/16 v5, 0x9

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_14
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_15
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_17

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_16

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_17
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_18
    iput v4, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$VideoDetails;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

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
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDuration:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasContentRating:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->likes:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasLikes:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->dislikes:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDislikes:Z

    goto :goto_0

    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$Trailer;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$Trailer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$Trailer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    array-length v1, v5

    goto :goto_5

    :cond_9
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$Trailer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$Trailer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    if-nez v5, :cond_b

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    array-length v1, v5

    goto :goto_7

    :cond_c
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    if-nez v5, :cond_e

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    if-nez v5, :cond_11

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_12

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    goto/16 :goto_0

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
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDuration:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasReleaseDate:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasContentRating:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasLikes:Z

    if-nez v2, :cond_8

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->likes:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9

    :cond_8
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->likes:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->hasDislikes:Z

    if-nez v2, :cond_a

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->dislikes:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->dislikes:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->genre:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_c

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    array-length v2, v2

    if-lez v2, :cond_f

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->trailer:[Lcom/google/android/finsky/protos/DocDetails$Trailer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_e

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    array-length v2, v2

    if-lez v2, :cond_11

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    aget-object v0, v2, v1

    if-eqz v0, :cond_10

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_13

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_12

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_15

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_14

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method
