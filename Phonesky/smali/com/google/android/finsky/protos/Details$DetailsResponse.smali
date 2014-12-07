.class public final Lcom/google/android/finsky/protos/Details$DetailsResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetailsResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Details$DetailsResponse;


# instance fields
.field public analyticsCookie:Ljava/lang/String;

.field public docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

.field public docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field public footerHtml:Ljava/lang/String;

.field public hasAnalyticsCookie:Z

.field public hasFooterHtml:Z

.field public hasServerLogsCookie:Z

.field public serverLogsCookie:[B

.field public userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Details$DetailsResponse;

    sput-object v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Details$DetailsResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasFooterHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Details$DetailsResponse;->clear()Lcom/google/android/finsky/protos/Details$DetailsResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Details$DetailsResponse;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->analyticsCookie:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasFooterHtml:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->analyticsCookie:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->analyticsCookie:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasFooterHtml:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasServerLogsCookie:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iput v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Details$DetailsResponse;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV1$DocV1;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->analyticsCookie:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$Review;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasFooterHtml:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasServerLogsCookie:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Details$DetailsResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Details$DetailsResponse;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV1:Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasAnalyticsCookie:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->analyticsCookie:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->analyticsCookie:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasFooterHtml:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->hasServerLogsCookie:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_8
    return-void
.end method
