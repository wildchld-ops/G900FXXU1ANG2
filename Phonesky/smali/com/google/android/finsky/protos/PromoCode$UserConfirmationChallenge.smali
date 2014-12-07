.class public final Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PromoCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/PromoCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserConfirmationChallenge"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;


# instance fields
.field public buttonLabel:Ljava/lang/String;

.field public formattedPrice:Ljava/lang/String;

.field public hasButtonLabel:Z

.field public hasFormattedPrice:Z

.field public hasPriceBylineHtml:Z

.field public hasTitle:Z

.field public hasTitleBylineHtml:Z

.field public priceBylineHtml:Ljava/lang/String;

.field public thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

.field public title:Ljava/lang/String;

.field public titleBylineHtml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    sput-object v0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitleBylineHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasFormattedPrice:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasPriceBylineHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasButtonLabel:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->clear()Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitleBylineHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasFormattedPrice:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasPriceBylineHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasButtonLabel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitle:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitleBylineHtml:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasFormattedPrice:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasPriceBylineHtml:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasButtonLabel:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iput v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitle:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitleBylineHtml:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasFormattedPrice:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasPriceBylineHtml:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasButtonLabel:Z

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasTitleBylineHtml:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasFormattedPrice:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasPriceBylineHtml:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->hasButtonLabel:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    return-void
.end method
