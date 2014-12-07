.class public final Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingConfig"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;


# instance fields
.field public apiVersion:I

.field public credentialsUrl:Ljava/lang/String;

.field public hasApiVersion:Z

.field public hasCredentialsUrl:Z

.field public hasId:Z

.field public hasName:Z

.field public hasPerTransactionCredentialsRequired:Z

.field public hasProvisioningUrl:Z

.field public hasSendSubscriberIdWithCarrierBillingRequests:Z

.field public hasTosRequired:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public perTransactionCredentialsRequired:Z

.field public provisioningUrl:Ljava/lang/String;

.field public sendSubscriberIdWithCarrierBillingRequests:Z

.field public tosRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    sput-object v0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasId:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasApiVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasProvisioningUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasCredentialsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasTosRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasPerTransactionCredentialsRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->clear()Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasName:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasApiVersion:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasProvisioningUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasCredentialsUrl:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasTosRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasPerTransactionCredentialsRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasId:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasName:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasApiVersion:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasProvisioningUrl:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasCredentialsUrl:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasTosRequired:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    if-eqz v1, :cond_b

    :cond_a
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasPerTransactionCredentialsRequired:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    if-eqz v1, :cond_f

    :cond_e
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iput v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;
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

    iput-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasId:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasName:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasApiVersion:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasProvisioningUrl:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasCredentialsUrl:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasTosRequired:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasPerTransactionCredentialsRequired:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;

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

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasId:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasName:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasApiVersion:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->apiVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasProvisioningUrl:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->provisioningUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasCredentialsUrl:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->credentialsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasTosRequired:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->tosRequired:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasPerTransactionCredentialsRequired:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    if-eqz v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->perTransactionCredentialsRequired:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    if-eqz v0, :cond_f

    :cond_e
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$CarrierBillingConfig;->sendSubscriberIdWithCarrierBillingRequests:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_f
    return-void
.end method
