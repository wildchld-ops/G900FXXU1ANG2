.class public final Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewChallenge"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;


# instance fields
.field public cancelButtonDisplayLabel:Ljava/lang/String;

.field public cancelUrlRegexp:Ljava/lang/String;

.field public hasCancelButtonDisplayLabel:Z

.field public hasCancelUrlRegexp:Z

.field public hasResponseTargetUrlParam:Z

.field public hasStartUrl:Z

.field public hasTargetUrlRegexp:Z

.field public hasTitle:Z

.field public responseTargetUrlParam:Ljava/lang/String;

.field public startUrl:Ljava/lang/String;

.field public targetUrlRegexp:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    sput-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasStartUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTargetUrlRegexp:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelUrlRegexp:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelButtonDisplayLabel:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasResponseTargetUrlParam:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->clear()Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasStartUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTargetUrlRegexp:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelUrlRegexp:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelButtonDisplayLabel:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasResponseTargetUrlParam:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasStartUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTargetUrlRegexp:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelButtonDisplayLabel:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasResponseTargetUrlParam:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelUrlRegexp:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTitle:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasStartUrl:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTargetUrlRegexp:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelButtonDisplayLabel:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasResponseTargetUrlParam:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelUrlRegexp:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTitle:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasStartUrl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->startUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTargetUrlRegexp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->targetUrlRegexp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelButtonDisplayLabel:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelButtonDisplayLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasResponseTargetUrlParam:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->responseTargetUrlParam:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasCancelUrlRegexp:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->cancelUrlRegexp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->hasTitle:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    return-void
.end method