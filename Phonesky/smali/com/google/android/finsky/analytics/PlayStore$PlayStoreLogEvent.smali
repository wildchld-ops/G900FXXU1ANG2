.class public final Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayStoreLogEvent"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;


# instance fields
.field public backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

.field public click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

.field public deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

.field public impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

.field public search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;
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
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;

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

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->impression:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreImpressionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->click:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreClickEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->backgroundAction:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->search:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreLogEvent;->deepLink:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreDeepLinkEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    return-void
.end method
