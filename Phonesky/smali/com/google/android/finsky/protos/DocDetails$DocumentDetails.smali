.class public final Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;


# instance fields
.field public albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

.field public appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

.field public artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

.field public bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

.field public magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

.field public personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

.field public songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

.field public subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

.field public tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

.field public tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

.field public tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

.field public videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->clear()Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$AppDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$SongDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$BookDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    :cond_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    if-nez v1, :cond_9

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$PersonDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvShowDetails:Lcom/google/android/finsky/protos/DocDetails$TvShowDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    return-void
.end method
