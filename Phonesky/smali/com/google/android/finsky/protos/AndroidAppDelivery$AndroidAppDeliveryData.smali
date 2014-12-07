.class public final Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "AndroidAppDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/AndroidAppDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidAppDeliveryData"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;


# instance fields
.field public additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

.field public downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

.field public downloadSize:J

.field public downloadUrl:Ljava/lang/String;

.field public encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

.field public forwardLocked:Z

.field public hasDownloadSize:Z

.field public hasDownloadUrl:Z

.field public hasForwardLocked:Z

.field public hasImmediateStartNeeded:Z

.field public hasPostInstallRefundWindowMillis:Z

.field public hasRefundTimeout:Z

.field public hasServerInitiated:Z

.field public hasSignature:Z

.field public immediateStartNeeded:Z

.field public patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

.field public postInstallRefundWindowMillis:J

.field public refundTimeout:J

.field public serverInitiated:Z

.field public signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    sput-object v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->clear()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1
    .param p0    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    iput-object v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    sget-object v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    sget-object v0, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    iput-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    iput-object v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    invoke-static {v8, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v3, v3

    if-lez v3, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    aget-object v0, v3, v1

    if-eqz v0, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    array-length v3, v3

    if-lez v3, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    array-length v3, v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    aget-object v0, v3, v1

    if-eqz v0, :cond_8

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    if-eqz v3, :cond_b

    :cond_a
    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    if-nez v3, :cond_c

    iget-wide v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_d

    :cond_c
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    if-eq v3, v8, :cond_f

    :cond_e
    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_f
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    if-nez v3, :cond_10

    iget-wide v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_11

    :cond_10
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_11
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    if-eqz v3, :cond_13

    :cond_12
    const/16 v3, 0xa

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_13
    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    if-eqz v3, :cond_14

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-eqz v3, :cond_15

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_15
    iput v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    array-length v1, v5

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-nez v5, :cond_8

    new-instance v5, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    invoke-virtual {p1, v7, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v2, v2

    if-lez v2, :cond_7

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    aget-object v0, v2, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    array-length v2, v2

    if-lez v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    aget-object v0, v2, v1

    if-eqz v0, :cond_8

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    if-nez v2, :cond_c

    iget-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_d

    :cond_c
    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasServerInitiated:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    if-eq v2, v7, :cond_f

    :cond_e
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->serverInitiated:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_f
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasPostInstallRefundWindowMillis:Z

    if-nez v2, :cond_10

    iget-wide v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_11

    :cond_10
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->postInstallRefundWindowMillis:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_11
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasImmediateStartNeeded:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    if-eqz v2, :cond_13

    :cond_12
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->immediateStartNeeded:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_13
    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    if-eqz v2, :cond_14

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->patchData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppPatchData;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_14
    iget-object v2, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    if-eqz v2, :cond_15

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->encryptionParams:Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_15
    return-void
.end method
