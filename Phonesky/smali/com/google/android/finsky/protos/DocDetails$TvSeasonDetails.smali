.class public final Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvSeasonDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;


# instance fields
.field public broadcaster:Ljava/lang/String;

.field public episodeCount:I

.field public expectedEpisodeCount:I

.field public hasBroadcaster:Z

.field public hasEpisodeCount:Z

.field public hasExpectedEpisodeCount:Z

.field public hasParentDetailsUrl:Z

.field public hasReleaseDate:Z

.field public hasSeasonIndex:Z

.field public parentDetailsUrl:Ljava/lang/String;

.field public releaseDate:Ljava/lang/String;

.field public seasonIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->clear()Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->seasonIndex:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->releaseDate:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->broadcaster:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->seasonIndex:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->seasonIndex:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->releaseDate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->broadcaster:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->broadcaster:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

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

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->seasonIndex:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->releaseDate:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->broadcaster:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasParentDetailsUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->parentDetailsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasSeasonIndex:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->seasonIndex:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->seasonIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasReleaseDate:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->releaseDate:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasBroadcaster:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->broadcaster:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->broadcaster:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasEpisodeCount:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    return-void
.end method
