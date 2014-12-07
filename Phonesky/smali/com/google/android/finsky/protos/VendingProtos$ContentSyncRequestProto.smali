.class public final Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentSyncRequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;,
        Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;


# instance fields
.field public assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

.field public hasIncremental:Z

.field public hasSideloadedAppCount:Z

.field public incremental:Z

.field public sideloadedAppCount:I

.field public systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->clear()Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->incremental:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    sget-object v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    sget-object v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->incremental:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->incremental:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    array-length v3, v3

    if-lez v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    aget-object v0, v3, v1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    array-length v3, v3

    if-lez v3, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    aget-object v0, v3, v1

    if-eqz v0, :cond_4

    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    if-nez v3, :cond_6

    iget v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    if-eqz v3, :cond_7

    :cond_6
    const/16 v3, 0xe

    iget v4, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iput v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xa

    const/4 v7, 0x2

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->incremental:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    goto :goto_0

    :sswitch_2
    const/16 v5, 0x13

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x53

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    array-length v1, v5

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x13 -> :sswitch_2
        0x53 -> :sswitch_3
        0x70 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;

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

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasIncremental:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->incremental:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->incremental:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->assetInstallState:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    array-length v2, v2

    if-lez v2, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->systemApp:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    aget-object v0, v2, v1

    if-eqz v0, :cond_4

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->hasSideloadedAppCount:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    if-eqz v2, :cond_7

    :cond_6
    const/16 v2, 0xe

    iget v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;->sideloadedAppCount:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    return-void
.end method
