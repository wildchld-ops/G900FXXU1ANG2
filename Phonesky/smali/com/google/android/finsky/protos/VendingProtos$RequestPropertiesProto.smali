.class public final Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPropertiesProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;


# instance fields
.field public aid:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public hasAid:Z

.field public hasClientId:Z

.field public hasLoggingId:Z

.field public hasOperatorName:Z

.field public hasOperatorNumericName:Z

.field public hasProductNameAndVersion:Z

.field public hasSimOperatorName:Z

.field public hasSimOperatorNumericName:Z

.field public hasSoftwareVersion:Z

.field public hasUserAuthToken:Z

.field public hasUserAuthTokenSecure:Z

.field public hasUserCountry:Z

.field public hasUserLanguage:Z

.field public loggingId:Ljava/lang/String;

.field public operatorName:Ljava/lang/String;

.field public operatorNumericName:Ljava/lang/String;

.field public productNameAndVersion:Ljava/lang/String;

.field public simOperatorName:Ljava/lang/String;

.field public simOperatorNumericName:Ljava/lang/String;

.field public softwareVersion:I

.field public userAuthToken:Ljava/lang/String;

.field public userAuthTokenSecure:Z

.field public userCountry:Ljava/lang/String;

.field public userLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clear()Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthToken:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->softwareVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->aid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->softwareVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->aid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthToken:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->softwareVersion:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->aid:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;

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

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->softwareVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->aid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->userCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$RequestPropertiesProto;->loggingId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    return-void
.end method
