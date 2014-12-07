.class public final Lcom/google/android/finsky/protos/ConsumePurchaseResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ConsumePurchaseResponse.java"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ConsumePurchaseResponse;


# instance fields
.field public hasStatus:Z

.field public libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    sput-object v0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->clear()Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ConsumePurchaseResponse;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    iput v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->status:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->hasStatus:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->status:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->hasStatus:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->status:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ConsumePurchaseResponse;
    .locals 2
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Library$LibraryUpdate;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->status:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->hasStatus:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ConsumePurchaseResponse;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->status:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->hasStatus:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/ConsumePurchaseResponse;->status:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    return-void
.end method
