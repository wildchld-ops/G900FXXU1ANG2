.class public final Lcom/google/android/finsky/protos/Browse$QuickLink;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickLink"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Browse$QuickLink;


# instance fields
.field public backendId:I

.field public displayRequired:Z

.field public hasBackendId:Z

.field public hasDisplayRequired:Z

.field public hasName:Z

.field public hasPrismStyle:Z

.field public hasServerLogsCookie:Z

.field public image:Lcom/google/android/finsky/protos/Doc$Image;

.field public link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

.field public name:Ljava/lang/String;

.field public prismStyle:Z

.field public serverLogsCookie:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Browse$QuickLink;

    sput-object v0, Lcom/google/android/finsky/protos/Browse$QuickLink;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Browse$QuickLink;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasDisplayRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasPrismStyle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Browse$QuickLink;->clear()Lcom/google/android/finsky/protos/Browse$QuickLink;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Browse$QuickLink;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasName:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasDisplayRequired:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasBackendId:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasPrismStyle:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasName:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasDisplayRequired:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasServerLogsCookie:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasBackendId:Z

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasPrismStyle:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Browse$QuickLink;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasName:Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasDisplayRequired:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasServerLogsCookie:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasBackendId:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasPrismStyle:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Browse$QuickLink;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Browse$QuickLink;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasName:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->image:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->link:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasDisplayRequired:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->displayRequired:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasServerLogsCookie:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->serverLogsCookie:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_7
    iget v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasBackendId:Z

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->hasPrismStyle:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Browse$QuickLink;->prismStyle:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    return-void
.end method
