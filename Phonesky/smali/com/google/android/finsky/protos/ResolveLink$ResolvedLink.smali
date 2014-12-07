.class public final Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/ResolveLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedLink"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;


# instance fields
.field public browseUrl:Ljava/lang/String;

.field public detailsUrl:Ljava/lang/String;

.field public directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

.field public hasBrowseUrl:Z

.field public hasDetailsUrl:Z

.field public hasHomeUrl:Z

.field public hasSearchUrl:Z

.field public hasServerLogsCookie:Z

.field public homeUrl:Ljava/lang/String;

.field public redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

.field public searchUrl:Ljava/lang/String;

.field public serverLogsCookie:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    sput-object v0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasDetailsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasBrowseUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasSearchUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasHomeUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->clear()Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasDetailsUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasBrowseUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasSearchUrl:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasHomeUrl:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasDetailsUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasBrowseUrl:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasSearchUrl:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasHomeUrl:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasServerLogsCookie:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;
    .locals 3
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasDetailsUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasBrowseUrl:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasSearchUrl:Z

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasHomeUrl:Z

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasServerLogsCookie:Z

    goto :goto_0

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
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasDetailsUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasBrowseUrl:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasSearchUrl:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasHomeUrl:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->hasServerLogsCookie:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->serverLogsCookie:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_b
    return-void
.end method
