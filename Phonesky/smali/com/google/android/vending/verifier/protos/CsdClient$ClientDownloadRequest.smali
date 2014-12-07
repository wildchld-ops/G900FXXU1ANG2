.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientDownloadRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;,
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;


# instance fields
.field public androidId:J

.field public apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

.field private cachedSize:I

.field public clientAsn:[Ljava/lang/String;

.field public digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

.field public downloadType:I

.field public fileBasename:Ljava/lang/String;

.field public hasAndroidId:Z

.field public hasDownloadType:Z

.field public hasFileBasename:Z

.field public hasLength:Z

.field public hasLocale:Z

.field public hasUrl:Z

.field public hasUserInitiated:Z

.field public length:J

.field public locale:Ljava/lang/String;

.field public originatingPackages:[Ljava/lang/String;

.field public originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

.field public resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

.field public signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

.field public url:Ljava/lang/String;

.field public userInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    sput-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl:Z

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    iput-wide v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length:J

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength:Z

    sget-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated:Z

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename:Z

    iput v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    iput-wide v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_0
    const/4 v6, 0x3

    iget-wide v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    const/4 v6, 0x4

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_2
    iget-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated:Z

    if-eqz v6, :cond_4

    :cond_3
    const/4 v6, 0x6

    iget-boolean v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    :cond_4
    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_6
    iget-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    const/16 v6, 0x9

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_8
    iget v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    if-eqz v6, :cond_a

    :cond_9
    const/16 v6, 0xa

    iget v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    :cond_a
    iget-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    const/16 v6, 0xb

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_c
    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    if-eqz v6, :cond_d

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_d
    iget-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    if-nez v6, :cond_e

    iget-wide v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    :cond_e
    const/16 v6, 0xd

    iget-wide v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    :cond_f
    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_10

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_10
    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    :cond_11
    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    if-eqz v6, :cond_12

    const/16 v6, 0x11

    iget-object v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    :cond_12
    iput v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->cachedSize:I

    return v5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUrl:Z

    goto :goto_0

    :sswitch_2
    new-instance v4, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-direct {v4}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;-><init>()V

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length:J

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLength:Z

    goto :goto_0

    :sswitch_4
    const/16 v4, 0x22

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    invoke-static {v4, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    :goto_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    new-instance v5, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    invoke-direct {v5}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    new-instance v5, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    invoke-direct {v5}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    new-instance v4, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-direct {v4}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;-><init>()V

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated:Z

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated:Z

    goto/16 :goto_0

    :sswitch_7
    const/16 v4, 0x42

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    invoke-static {v4, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    :goto_2
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    goto/16 :goto_0

    :sswitch_b
    new-instance v4, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-direct {v4}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;-><init>()V

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    iput-boolean v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    goto/16 :goto_0

    :sswitch_d
    const/16 v4, 0x7a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    invoke-static {v4, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    :goto_3
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto/16 :goto_0

    :sswitch_e
    new-instance v4, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-direct {v4}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;-><init>()V

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x69 -> :sswitch_c
        0x7a -> :sswitch_d
        0x8a -> :sswitch_e
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

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;

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

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->length:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->resources:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Resource;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->signature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasUserInitiated:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated:Z

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->userInitiated:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->clientAsn:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasFileBasename:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->fileBasename:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasDownloadType:Z

    if-eqz v4, :cond_9

    :cond_8
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->downloadType:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasLocale:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->locale:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    if-eqz v4, :cond_c

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->apkInfo:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->hasAndroidId:Z

    if-nez v4, :cond_d

    iget-wide v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    :cond_d
    const/16 v4, 0xd

    iget-wide v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->androidId:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingPackages:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    if-eqz v4, :cond_10

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;->originatingSignature:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$SignatureInfo;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    return-void
.end method
