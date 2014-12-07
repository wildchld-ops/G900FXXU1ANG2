.class public final Lcom/google/android/finsky/protos/FilterRules$Availability;
.super Lcom/google/protobuf/nano/MessageNano;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Availability"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Availability;


# instance fields
.field public availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

.field public availableIfOwned:Z

.field public filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

.field public hasAvailableIfOwned:Z

.field public hasHidden:Z

.field public hasOfferType:Z

.field public hasRestriction:Z

.field public hidden:Z

.field public install:[Lcom/google/android/finsky/protos/Common$Install;

.field public offerType:I

.field public ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

.field public perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

.field public restriction:I

.field public rule:Lcom/google/android/finsky/protos/FilterRules$Rule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/FilterRules$Availability;

    sput-object v0, Lcom/google/android/finsky/protos/FilterRules$Availability;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Availability;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasHidden:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/FilterRules$Availability;->clear()Lcom/google/android/finsky/protos/FilterRules$Availability;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/FilterRules$Availability;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasRestriction:Z

    sget-object v0, Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    iput v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->offerType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasOfferType:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hidden:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasHidden:Z

    sget-object v0, Lcom/google/android/finsky/protos/Common$Install;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Install;

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    sget-object v0, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    iput-object v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    if-ne v3, v5, :cond_0

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasRestriction:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->offerType:I

    if-ne v3, v5, :cond_2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasOfferType:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->offerType:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    array-length v3, v3

    if-lez v3, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    aget-object v0, v3, v1

    if-eqz v0, :cond_5

    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    if-eqz v3, :cond_8

    :cond_7
    const/16 v3, 0xd

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    array-length v3, v3

    if-lez v3, :cond_a

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    aget-object v0, v3, v1

    if-eqz v0, :cond_9

    const/16 v3, 0xe

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    if-eqz v3, :cond_b

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    if-eqz v3, :cond_c

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_c
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    array-length v3, v3

    if-lez v3, :cond_e

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    array-length v3, v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    aget-object v0, v3, v1

    if-eqz v0, :cond_d

    const/16 v3, 0x12

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasHidden:Z

    if-nez v3, :cond_f

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hidden:Z

    if-eqz v3, :cond_10

    :cond_f
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hidden:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_10
    iput v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$Availability;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x9

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasRestriction:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->offerType:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasOfferType:Z

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Rule;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x4b

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    if-nez v5, :cond_3

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    array-length v1, v5

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/google/protobuf/nano/MessageNano;I)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Common$Install;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Common$Install;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Install;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    array-length v1, v5

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/finsky/protos/Common$Install;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Install;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    if-nez v5, :cond_8

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    if-nez v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x92

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    if-nez v5, :cond_b

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    array-length v1, v5

    goto :goto_5

    :cond_c
    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hidden:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasHidden:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_1
        0x30 -> :sswitch_2
        0x3a -> :sswitch_3
        0x4b -> :sswitch_4
        0x68 -> :sswitch_5
        0x72 -> :sswitch_6
        0x82 -> :sswitch_7
        0x8a -> :sswitch_8
        0x92 -> :sswitch_9
        0xa8 -> :sswitch_a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/FilterRules$Availability;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/FilterRules$Availability;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    if-ne v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasRestriction:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->offerType:I

    if-ne v2, v4, :cond_2

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasOfferType:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->offerType:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    array-length v2, v2

    if-lez v2, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction:[Lcom/google/android/finsky/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    aget-object v0, v2, v1

    if-eqz v0, :cond_5

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    if-eqz v2, :cond_8

    :cond_7
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    array-length v2, v2

    if-lez v2, :cond_a

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->install:[Lcom/google/android/finsky/protos/Common$Install;

    aget-object v0, v2, v1

    if-eqz v0, :cond_9

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    if-eqz v2, :cond_b

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->filterInfo:Lcom/google/android/finsky/protos/FilterRules$FilterEvaluationInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    if-eqz v2, :cond_c

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->ownershipInfo:Lcom/google/android/finsky/protos/Ownership$OwnershipInfo;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    array-length v2, v2

    if-lez v2, :cond_e

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availabilityProblem:[Lcom/google/android/finsky/protos/FilterRules$AvailabilityProblem;

    aget-object v0, v2, v1

    if-eqz v0, :cond_d

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hasHidden:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hidden:Z

    if-eqz v2, :cond_10

    :cond_f
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/FilterRules$Availability;->hidden:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_10
    return-void
.end method
