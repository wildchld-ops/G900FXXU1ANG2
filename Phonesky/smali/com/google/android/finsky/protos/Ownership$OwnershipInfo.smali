.class public final Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Ownership.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Ownership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OwnershipInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;


# instance fields
.field public autoRenewing:Z

.field public developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

.field public groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

.field public hasAutoRenewing:Z

.field public hasHidden:Z

.field public hasInitiationTimestampMsec:Z

.field public hasPostDeliveryRefundWindowMsec:Z

.field public hasPreordered:Z

.field public hasQuantity:Z

.field public hasRefundTimeoutTimestampMsec:Z

.field public hasValidUntilTimestampMsec:Z

.field public hidden:Z

.field public initiationTimestampMsec:J

.field public licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

.field public postDeliveryRefundWindowMsec:J

.field public preordered:Z

.field public quantity:I

.field public refundTimeoutTimestampMsec:J

.field public rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

.field public validUntilTimestampMsec:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    sput-object v0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasInitiationTimestampMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasAutoRenewing:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPreordered:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasHidden:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasQuantity:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->clear()Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->initiationTimestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasInitiationTimestampMsec:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->validUntilTimestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->autoRenewing:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasAutoRenewing:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->refundTimeoutTimestampMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    iput-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->postDeliveryRefundWindowMsec:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    iput-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->preordered:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPreordered:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hidden:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasHidden:Z

    iput-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->quantity:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasQuantity:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasInitiationTimestampMsec:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->initiationTimestampMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->initiationTimestampMsec:J

    invoke-static {v6, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->validUntilTimestampMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->validUntilTimestampMsec:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasAutoRenewing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->autoRenewing:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->autoRenewing:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    if-nez v1, :cond_6

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->refundTimeoutTimestampMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->refundTimeoutTimestampMsec:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    if-nez v1, :cond_8

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->postDeliveryRefundWindowMsec:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->postDeliveryRefundWindowMsec:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPreordered:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->preordered:Z

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->preordered:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasHidden:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hidden:Z

    if-eqz v1, :cond_e

    :cond_d
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hidden:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    if-eqz v1, :cond_f

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    if-eqz v1, :cond_10

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    if-eqz v1, :cond_11

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasQuantity:Z

    if-nez v1, :cond_12

    iget v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->quantity:I

    if-eq v1, v6, :cond_13

    :cond_12
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->quantity:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iput v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->initiationTimestampMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasInitiationTimestampMsec:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->validUntilTimestampMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->autoRenewing:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasAutoRenewing:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->refundTimeoutTimestampMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->postDeliveryRefundWindowMsec:J

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Common$SignedData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Common$SignedData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->preordered:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPreordered:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hidden:Z

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasHidden:Z

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Common$RentalTerms;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->quantity:I

    iput-boolean v3, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasQuantity:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasInitiationTimestampMsec:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->initiationTimestampMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->initiationTimestampMsec:J

    invoke-virtual {p1, v5, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->validUntilTimestampMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->validUntilTimestampMsec:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasAutoRenewing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->autoRenewing:Z

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->autoRenewing:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->refundTimeoutTimestampMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->refundTimeoutTimestampMsec:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->postDeliveryRefundWindowMsec:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_9

    :cond_8
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->postDeliveryRefundWindowMsec:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->developerPurchaseInfo:Lcom/google/android/finsky/protos/Common$SignedData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasPreordered:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->preordered:Z

    if-eqz v0, :cond_c

    :cond_b
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->preordered:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasHidden:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hidden:Z

    if-eqz v0, :cond_e

    :cond_d
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hidden:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    if-eqz v0, :cond_10

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->groupLicenseInfo:Lcom/google/android/finsky/protos/GroupLicense$GroupLicenseInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    if-eqz v0, :cond_11

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->licensedDocumentInfo:Lcom/google/android/finsky/protos/GroupLicense$LicensedDocumentInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->hasQuantity:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->quantity:I

    if-eq v0, v5, :cond_13

    :cond_12
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;->quantity:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_13
    return-void
.end method
