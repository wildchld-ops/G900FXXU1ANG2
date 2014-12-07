.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;


# instance fields
.field private cachedSize:I

.field public certificate:[B

.field public expiryTime:J

.field public fingerprint:[B

.field public hasCertificate:Z

.field public hasExpiryTime:Z

.field public hasFingerprint:Z

.field public hasIssuer:Z

.field public hasParsedSuccessfully:Z

.field public hasStartTime:Z

.field public hasSubject:Z

.field public issuer:[B

.field public parsedSuccessfully:Z

.field public startTime:J

.field public subject:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    sput-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully:Z

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject:[B

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer:[B

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint:[B

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint:Z

    iput-wide v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime:J

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime:Z

    iput-wide v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime:J

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime:Z

    if-nez v1, :cond_a

    iget-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime:Z

    if-nez v1, :cond_c

    iget-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully:Z

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject:[B

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer:[B

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint:[B

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime:J

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime:J

    iput-boolean v3, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;

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

    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasCertificate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->certificate:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasParsedSuccessfully:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->parsedSuccessfully:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasSubject:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->subject:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasIssuer:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->issuer:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasFingerprint:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->fingerprint:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasExpiryTime:Z

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->expiryTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->hasStartTime:Z

    if-nez v0, :cond_c

    iget-wide v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadRequest$CertificateChain$Element;->startTime:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    return-void
.end method
