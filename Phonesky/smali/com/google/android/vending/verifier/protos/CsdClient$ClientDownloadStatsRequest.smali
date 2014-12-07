.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientDownloadStatsRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;


# instance fields
.field private cachedSize:I

.field public hasToken:Z

.field public hasUserDecision:Z

.field public token:[B

.field public userDecision:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    sput-object v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->EMPTY_ARRAY:[Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    iput-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    iput-boolean v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    iput-boolean v2, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;

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

    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasUserDecision:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->userDecision:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->hasToken:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadStatsRequest;->token:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_3
    return-void
.end method
