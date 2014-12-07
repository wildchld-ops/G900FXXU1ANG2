.class public final Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierTos"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;


# instance fields
.field public dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

.field public hasNeedsDcbTosAcceptance:Z

.field public hasNeedsPiiTosAcceptance:Z

.field public needsDcbTosAcceptance:Z

.field public needsPiiTosAcceptance:Z

.field public piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->clear()Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    return-void
.end method
