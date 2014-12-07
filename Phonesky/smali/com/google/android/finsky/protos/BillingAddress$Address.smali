.class public final Lcom/google/android/finsky/protos/BillingAddress$Address;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BillingAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/BillingAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/BillingAddress$Address;


# instance fields
.field public addressLine1:Ljava/lang/String;

.field public addressLine2:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public dependentLocality:Ljava/lang/String;

.field public deprecatedIsReduced:Z

.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public hasAddressLine1:Z

.field public hasAddressLine2:Z

.field public hasCity:Z

.field public hasDependentLocality:Z

.field public hasDeprecatedIsReduced:Z

.field public hasEmail:Z

.field public hasFirstName:Z

.field public hasLanguageCode:Z

.field public hasLastName:Z

.field public hasName:Z

.field public hasPhoneNumber:Z

.field public hasPostalCode:Z

.field public hasPostalCountry:Z

.field public hasSortingCode:Z

.field public hasState:Z

.field public languageCode:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;

.field public postalCountry:Ljava/lang/String;

.field public sortingCode:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/BillingAddress$Address;

    sput-object v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/BillingAddress$Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasFirstName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLastName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCountry:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDependentLocality:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasSortingCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLanguageCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasEmail:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/BillingAddress$Address;->clear()Lcom/google/android/finsky/protos/BillingAddress$Address;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasFirstName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLastName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCountry:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->dependentLocality:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDependentLocality:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->sortingCode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasSortingCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->languageCode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLanguageCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasEmail:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasName:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCountry:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDependentLocality:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->dependentLocality:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->dependentLocality:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasSortingCode:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->sortingCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->sortingCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLanguageCode:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->languageCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->languageCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    if-eqz v1, :cond_17

    :cond_16
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasFirstName:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLastName:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_1a
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasEmail:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iput v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/BillingAddress$Address;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCountry:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->dependentLocality:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDependentLocality:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->sortingCode:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasSortingCode:Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->languageCode:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLanguageCode:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasFirstName:Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLastName:Z

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasEmail:Z

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
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/BillingAddress$Address;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/BillingAddress$Address;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasName:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine1:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasAddressLine2:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasCity:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasState:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCode:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPostalCountry:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCountry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDependentLocality:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->dependentLocality:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->dependentLocality:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasSortingCode:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->sortingCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->sortingCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLanguageCode:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->languageCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->languageCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasPhoneNumber:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    if-eqz v0, :cond_17

    :cond_16
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasFirstName:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_19
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasLastName:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasEmail:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1c
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1d
    return-void
.end method
