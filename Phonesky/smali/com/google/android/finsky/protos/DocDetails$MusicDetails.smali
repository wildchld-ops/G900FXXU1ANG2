.class public final Lcom/google/android/finsky/protos/DocDetails$MusicDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$MusicDetails;


# instance fields
.field public artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

.field public censoring:I

.field public durationSec:I

.field public genre:[Ljava/lang/String;

.field public hasCensoring:Z

.field public hasDurationSec:Z

.field public hasLabel:Z

.field public hasOriginalReleaseDate:Z

.field public hasReleaseDate:Z

.field public label:Ljava/lang/String;

.field public originalReleaseDate:Ljava/lang/String;

.field public releaseDate:Ljava/lang/String;

.field public releaseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasLabel:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->clear()Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$MusicDetails;
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasCensoring:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasLabel:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 10

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v7

    iget v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasCensoring:Z

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_1
    iget-boolean v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x2

    iget v9, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    add-int/2addr v7, v8

    :cond_3
    iget-boolean v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_5
    iget-boolean v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasLabel:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    const/4 v8, 0x4

    iget-object v9, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_7
    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    array-length v8, v8

    if-lez v8, :cond_9

    const/4 v4, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    array-length v8, v8

    if-ge v4, v8, :cond_9

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    aget-object v3, v8, v4

    if-eqz v3, :cond_8

    const/4 v8, 0x5

    invoke-static {v8, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_b

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    aget-object v3, v8, v4

    if-eqz v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v2, v8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    add-int/2addr v7, v2

    mul-int/lit8 v8, v1, 0x1

    add-int/2addr v7, v8

    :cond_c
    iget-boolean v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    :cond_d
    const/4 v8, 0x7

    iget-object v9, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_e
    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v8, v8

    if-lez v8, :cond_10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_f

    aget v3, v0, v5

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    :cond_10
    iput v7, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->cachedSize:I

    return v7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$MusicDetails;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasCensoring:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasLabel:Z

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    goto/16 :goto_0

    :sswitch_8
    const/16 v5, 0x40

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [I

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v1, v5

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasCensoring:Z

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasDurationSec:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasLabel:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    array-length v5, v5

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->artist:[Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    aget-object v1, v5, v2

    if-eqz v1, :cond_8

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_b

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    aget-object v1, v5, v2

    if-eqz v1, :cond_a

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasReleaseDate:Z

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v5, v5

    if-lez v5, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_e

    aget v1, v0, v3

    const/16 v5, 0x8

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method
