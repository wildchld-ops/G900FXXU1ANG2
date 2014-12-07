.class public final Lcom/google/android/finsky/protos/Doc$Image$Dimension;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Doc$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimension"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;


# instance fields
.field public hasHeight:Z

.field public hasWidth:Z

.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    sput-object v0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasWidth:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasHeight:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->clear()Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Doc$Image$Dimension;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasWidth:Z

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasHeight:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$Image$Dimension;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasWidth:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->hasHeight:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x18 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$Image$Dimension;

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

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    return-void
.end method
