.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateChain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;


# instance fields
.field private cachedSize:I

.field public element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    sput-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    sget-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    array-length v1, v4

    add-int v4, v1, v0

    new-array v2, v4, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    :goto_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    new-instance v5, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    invoke-direct {v5}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    new-instance v5, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    invoke-direct {v5}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;-><init>()V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;->element:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
