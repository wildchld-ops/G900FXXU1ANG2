.class public final Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorialSeriesContainer"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;


# instance fields
.field public colorThemeArgb:Ljava/lang/String;

.field public episodeSubtitle:Ljava/lang/String;

.field public episodeTitle:Ljava/lang/String;

.field public hasColorThemeArgb:Z

.field public hasEpisodeSubtitle:Z

.field public hasEpisodeTitle:Z

.field public hasSeriesSubtitle:Z

.field public hasSeriesTitle:Z

.field public seriesSubtitle:Ljava/lang/String;

.field public seriesTitle:Ljava/lang/String;

.field public videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasColorThemeArgb:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->clear()Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesSubtitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->colorThemeArgb:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasColorThemeArgb:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesTitle:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesSubtitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesSubtitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeTitle:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasColorThemeArgb:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->colorThemeArgb:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->colorThemeArgb:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    array-length v3, v3

    if-lez v3, :cond_b

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    aget-object v0, v3, v1

    if-eqz v0, :cond_a

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    iput v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

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

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesTitle:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesSubtitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeTitle:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->colorThemeArgb:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasColorThemeArgb:Z

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesTitle:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesSubtitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeTitle:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->hasColorThemeArgb:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->colorThemeArgb:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->colorThemeArgb:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    array-length v2, v2

    if-lez v2, :cond_b

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->videoSnippet:[Lcom/google/android/finsky/protos/DocumentV2$VideoSnippet;

    aget-object v0, v2, v1

    if-eqz v0, :cond_a

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method
