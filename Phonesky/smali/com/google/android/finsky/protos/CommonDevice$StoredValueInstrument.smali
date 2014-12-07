.class public final Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredValueInstrument"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;


# instance fields
.field public balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

.field public hasType:Z

.field public topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->clear()Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->hasType:Z

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->hasType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->hasType:Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$Money;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$Money;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

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

    iget v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->hasType:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->balance:Lcom/google/android/finsky/protos/CommonDevice$Money;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->topupInfo:Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    return-void
.end method
