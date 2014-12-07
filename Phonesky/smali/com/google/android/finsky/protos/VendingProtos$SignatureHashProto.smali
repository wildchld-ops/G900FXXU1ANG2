.class public final Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureHashProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;


# instance fields
.field public hasHash:Z

.field public hasPackageName:Z

.field public hasVersionCode:Z

.field public hash:[B

.field public packageName:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->clear()Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->versionCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hash:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hash:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->packageName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasPackageName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->versionCode:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasVersionCode:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hash:[B

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hasHash:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;

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

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$SignatureHashProto;->hash:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    return-void
.end method
