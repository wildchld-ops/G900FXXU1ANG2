.class public final Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallAsset"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;


# instance fields
.field public assetId:Ljava/lang/String;

.field public assetName:Ljava/lang/String;

.field public assetPackage:Ljava/lang/String;

.field public assetSignature:Ljava/lang/String;

.field public assetSize:J

.field public assetType:Ljava/lang/String;

.field public blobUrl:Ljava/lang/String;

.field public downloadAuthCookieName:Ljava/lang/String;

.field public downloadAuthCookieValue:Ljava/lang/String;

.field public forwardLocked:Z

.field public hasAssetId:Z

.field public hasAssetName:Z

.field public hasAssetPackage:Z

.field public hasAssetSignature:Z

.field public hasAssetSize:Z

.field public hasAssetType:Z

.field public hasBlobUrl:Z

.field public hasDownloadAuthCookieName:Z

.field public hasDownloadAuthCookieValue:Z

.field public hasForwardLocked:Z

.field public hasPostInstallRefundWindowMillis:Z

.field public hasRefundTimeoutMillis:Z

.field public hasSecured:Z

.field public hasVersionCode:Z

.field public postInstallRefundWindowMillis:J

.field public refundTimeoutMillis:J

.field public secured:Z

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->clear()Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    if-eqz v1, :cond_3

    :cond_2
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured:Z

    if-eqz v1, :cond_5

    :cond_4
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    if-eqz v1, :cond_7

    :cond_6
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    if-nez v1, :cond_c

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_d

    :cond_c
    const/16 v1, 0x10

    iget-wide v2, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetId:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetName:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetType:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetPackage:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasBlobUrl:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSignature:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasAssetSize:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x80 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

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

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasRefundTimeoutMillis:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasForwardLocked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasSecured:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured:Z

    if-eqz v0, :cond_5

    :cond_4
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->secured:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasVersionCode:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    if-eqz v0, :cond_7

    :cond_6
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieName:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasDownloadAuthCookieValue:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->hasPostInstallRefundWindowMillis:Z

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_d

    :cond_c
    const/16 v0, 0x10

    iget-wide v1, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->postInstallRefundWindowMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    return-void
.end method
