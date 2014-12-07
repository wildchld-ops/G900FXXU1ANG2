.class public final Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Challenge"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;


# instance fields
.field public addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

.field public authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

.field public webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    sput-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->clear()Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    return-void
.end method
