.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;


# instance fields
.field private cachedSize:I

.field public digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

.field public hasName:Z

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    sput-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->hasName:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->hasName:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->hasName:Z

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;

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

    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->hasName:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$FileInfo;->digests:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$Digests;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    return-void
.end method
