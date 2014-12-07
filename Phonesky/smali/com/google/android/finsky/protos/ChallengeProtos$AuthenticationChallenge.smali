.class public final Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationChallenge"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;


# instance fields
.field public authenticationType:I

.field public gaiaDescriptionTextHtml:Ljava/lang/String;

.field public gaiaFooterTextHtml:Ljava/lang/String;

.field public gaiaHeaderText:Ljava/lang/String;

.field public gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

.field public gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

.field public hasAuthenticationType:Z

.field public hasGaiaDescriptionTextHtml:Z

.field public hasGaiaFooterTextHtml:Z

.field public hasGaiaHeaderText:Z

.field public hasGaiaOptOutDescriptionTextHtml:Z

.field public hasResponseAuthenticationTypeParam:Z

.field public hasResponseRetryCountParam:Z

.field public responseAuthenticationTypeParam:Ljava/lang/String;

.field public responseRetryCountParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    sput-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaOptOutDescriptionTextHtml:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->clear()Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaOptOutDescriptionTextHtml:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaOptOutDescriptionTextHtml:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;
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

    iput v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaOptOutDescriptionTextHtml:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

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

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasAuthenticationType:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseAuthenticationTypeParam:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasResponseRetryCountParam:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaHeaderText:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaDescriptionTextHtml:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaOptOutDescriptionTextHtml:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_e
    return-void
.end method
