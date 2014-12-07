.class public final Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataMessageProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;


# instance fields
.field public appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

.field public category:Ljava/lang/String;

.field public hasCategory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->hasCategory:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->clear()Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->category:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->hasCategory:Z

    sget-object v0, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->category:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    array-length v3, v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->category:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->hasCategory:Z

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->category:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$DataMessageProto;->appData:[Lcom/google/android/finsky/protos/VendingProtos$AppDataProto;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
