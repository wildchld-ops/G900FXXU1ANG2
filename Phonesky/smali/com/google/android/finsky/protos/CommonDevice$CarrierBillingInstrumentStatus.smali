.class public final Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;
.super Lcom/google/protobuf/nano/MessageNano;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingInstrumentStatus"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;


# instance fields
.field public apiVersion:I

.field public associationRequired:Z

.field public carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

.field public carrierSupportPhoneNumber:Ljava/lang/String;

.field public carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

.field public deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

.field public hasApiVersion:Z

.field public hasAssociationRequired:Z

.field public hasCarrierSupportPhoneNumber:Z

.field public hasName:Z

.field public hasPasswordRequired:Z

.field public name:Ljava/lang/String;

.field public passwordRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    sput-object v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierSupportPhoneNumber:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->clear()Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    iput v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierSupportPhoneNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierSupportPhoneNumber:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierSupportPhoneNumber:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierSupportPhoneNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierSupportPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iput v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierSupportPhoneNumber:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierSupportPhoneNumber:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasPasswordRequired:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasApiVersion:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierSupportPhoneNumber:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierSupportPhoneNumber:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierSupportPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    return-void
.end method
