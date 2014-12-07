.class public final Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetInstallState"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;


# instance fields
.field public assetId:Ljava/lang/String;

.field public assetReferrer:Ljava/lang/String;

.field public assetState:I

.field public hasAssetId:Z

.field public hasAssetReferrer:Z

.field public hasAssetState:Z

.field public hasInstallTime:Z

.field public hasPackageName:Z

.field public hasUninstallTime:Z

.field public hasVersionCode:Z

.field public installTime:J

.field public packageName:Ljava/lang/String;

.field public uninstallTime:J

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->clear()Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    if-eqz v1, :cond_7

    :cond_6
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

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

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetId:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetState:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x20 -> :sswitch_2
        0x28 -> :sswitch_3
        0x30 -> :sswitch_4
        0x3a -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetState:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasInstallTime:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->installTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasUninstallTime:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->uninstallTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasPackageName:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasVersionCode:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    if-eqz v0, :cond_7

    :cond_6
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->hasAssetReferrer:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->assetReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method
