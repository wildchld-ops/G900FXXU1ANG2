.class public final Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemApp"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;


# instance fields
.field public certificateHash:[Ljava/lang/String;

.field public hasPackageName:Z

.field public hasVersionCode:Z

.field public packageName:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->clear()Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName:Z

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    if-eqz v5, :cond_1

    :cond_0
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_4
    iput v4, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

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

    iput-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasPackageName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x6a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0x60 -> :sswitch_2
        0x6a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

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

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->hasVersionCode:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->versionCode:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->certificateHash:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
