.class public final Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ChallengeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/ChallengeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressChallenge"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;


# instance fields
.field public address:Lcom/google/android/finsky/protos/BillingAddress$Address;

.field public checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

.field public descriptionHtml:Ljava/lang/String;

.field public errorHtml:Ljava/lang/String;

.field public errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

.field public hasDescriptionHtml:Z

.field public hasErrorHtml:Z

.field public hasResponseAddressParam:Z

.field public hasResponseCheckboxesParam:Z

.field public hasTitle:Z

.field public requiredField:[I

.field public responseAddressParam:Ljava/lang/String;

.field public responseCheckboxesParam:Ljava/lang/String;

.field public supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    sput-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->clear()Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    sget-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    sget-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    sget-object v0, Lcom/google/android/finsky/protos/ChallengeProtos$Country;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    iput-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v6

    iget-boolean v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_1
    iget-boolean v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_3
    iget-boolean v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_5
    iget-boolean v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    const/4 v7, 0x4

    iget-object v8, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_7
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v7, v7

    if-lez v7, :cond_9

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v7, v7

    if-ge v3, v7, :cond_9

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v2, v7, v3

    if-eqz v2, :cond_8

    const/4 v7, 0x5

    invoke-static {v7, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v7, :cond_a

    const/4 v7, 0x6

    iget-object v8, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-static {v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_a
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v7, v7

    if-lez v7, :cond_c

    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v7, v7

    if-ge v3, v7, :cond_c

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    aget-object v2, v7, v3

    if-eqz v2, :cond_b

    const/4 v7, 0x7

    invoke-static {v7, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    iget-boolean v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    const/16 v7, 0x8

    iget-object v8, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_e
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v7, v7

    if-lez v7, :cond_10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_f

    aget v2, v0, v4

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v7

    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    :cond_10
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v7, v7

    if-lez v7, :cond_12

    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v7, v7

    if-ge v3, v7, :cond_12

    iget-object v7, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    aget-object v2, v7, v3

    if-eqz v2, :cond_11

    const/16 v7, 0xa

    invoke-static {v7, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v7

    add-int/2addr v6, v7

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_12
    iput v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->cachedSize:I

    return v6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    goto :goto_0

    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    goto :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/BillingAddress$Address;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v1, v5

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x48

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    if-nez v5, :cond_9

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [I

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v1, v5

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    if-nez v5, :cond_c

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$Country;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v1, v5

    goto :goto_7

    :cond_d
    new-instance v5, Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/ChallengeProtos$Country;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    goto/16 :goto_0

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
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseAddressParam:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseAddressParam:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasResponseCheckboxesParam:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->responseCheckboxesParam:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasTitle:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->title:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasDescriptionHtml:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->descriptionHtml:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    array-length v5, v5

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->checkbox:[Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    aget-object v1, v5, v2

    if-eqz v1, :cond_8

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-eqz v5, :cond_a

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v5, v5

    if-lez v5, :cond_c

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v5, v5

    if-ge v2, v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    aget-object v1, v5, v2

    if-eqz v1, :cond_b

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->hasErrorHtml:Z

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v5, v5

    if-lez v5, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->requiredField:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_f

    aget v1, v0, v3

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v5, v5

    if-lez v5, :cond_11

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    array-length v5, v5

    if-ge v2, v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->supportedCountry:[Lcom/google/android/finsky/protos/ChallengeProtos$Country;

    aget-object v1, v5, v2

    if-eqz v1, :cond_10

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    return-void
.end method
