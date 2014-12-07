.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApkInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;


# instance fields
.field private cachedSize:I

.field public files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

.field public hasPackageName:Z

.field public hasVersionCode:Z

.field public packageName:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    sput-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasPackageName:Z

    iput v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasVersionCode:Z

    sget-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasPackageName:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasVersionCode:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

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

    iput-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasPackageName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    iput-boolean v7, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasVersionCode:Z

    goto :goto_0

    :sswitch_3
    const/16 v4, 0x1a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    :goto_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    new-instance v5, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    invoke-direct {v5}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    new-instance v5, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    invoke-direct {v5}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasPackageName:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->hasVersionCode:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->versionCode:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$ApkInfo;->files:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
