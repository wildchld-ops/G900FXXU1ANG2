.class public final Lcom/google/android/finsky/protos/Common$Offer;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Offer"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Offer;


# instance fields
.field public checkoutFlowRequired:Z

.field public convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

.field public currencyCode:Ljava/lang/String;

.field public formattedAmount:Ljava/lang/String;

.field public formattedDescription:Ljava/lang/String;

.field public formattedFullAmount:Ljava/lang/String;

.field public formattedName:Ljava/lang/String;

.field public fullPriceMicros:J

.field public hasCheckoutFlowRequired:Z

.field public hasCurrencyCode:Z

.field public hasFormattedAmount:Z

.field public hasFormattedDescription:Z

.field public hasFormattedFullAmount:Z

.field public hasFormattedName:Z

.field public hasFullPriceMicros:Z

.field public hasLicensedOfferType:Z

.field public hasMicros:Z

.field public hasOfferId:Z

.field public hasOfferType:Z

.field public hasOnSaleDate:Z

.field public hasOnSaleDateDisplayTimeZoneOffsetMsec:Z

.field public hasPreorder:Z

.field public licensedOfferType:I

.field public micros:J

.field public offerId:Ljava/lang/String;

.field public offerType:I

.field public onSaleDate:J

.field public onSaleDateDisplayTimeZoneOffsetMsec:I

.field public preorder:Z

.field public promotionLabel:[Ljava/lang/String;

.field public rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

.field public subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

.field public subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Common$Offer;

    sput-object v0, Lcom/google/android/finsky/protos/Common$Offer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Offer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasMicros:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCurrencyCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedDescription:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasPreorder:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDateDisplayTimeZoneOffsetMsec:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Common$Offer;->clear()Lcom/google/android/finsky/protos/Common$Offer;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Common$Offer;
    .locals 6

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasMicros:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->currencyCode:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCurrencyCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedDescription:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    sget-object v0, Lcom/google/android/finsky/protos/Common$Offer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    iput v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferType:Z

    iput v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->licensedOfferType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasLicensedOfferType:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->preorder:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasPreorder:Z

    iput-wide v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDate:Z

    iput v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDateDisplayTimeZoneOffsetMsec:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDateDisplayTimeZoneOffsetMsec:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferId:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    invoke-static {v8, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->currencyCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v5, v5

    if-lez v5, :cond_3

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v2, v5, v3

    if-eqz v2, :cond_2

    const/4 v5, 0x4

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    if-eqz v5, :cond_5

    :cond_4
    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    if-nez v5, :cond_6

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_7

    :cond_6
    const/4 v5, 0x6

    iget-wide v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    if-ne v5, v8, :cond_a

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferType:Z

    if-eqz v5, :cond_b

    :cond_a
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    if-eqz v5, :cond_c

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_c
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDate:Z

    if-nez v5, :cond_d

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_e

    :cond_d
    const/16 v5, 0xa

    iget-wide v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_10
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    if-eqz v5, :cond_12

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_12
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedName:Z

    if-nez v5, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_14
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedDescription:Z

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_16
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasPreorder:Z

    if-nez v5, :cond_17

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->preorder:Z

    if-eqz v5, :cond_18

    :cond_17
    const/16 v5, 0xf

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->preorder:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_18
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDateDisplayTimeZoneOffsetMsec:Z

    if-nez v5, :cond_19

    iget v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDateDisplayTimeZoneOffsetMsec:I

    if-eqz v5, :cond_1a

    :cond_19
    const/16 v5, 0x10

    iget v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDateDisplayTimeZoneOffsetMsec:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1a
    iget v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->licensedOfferType:I

    if-ne v5, v8, :cond_1b

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasLicensedOfferType:Z

    if-eqz v5, :cond_1c

    :cond_1b
    const/16 v5, 0x11

    iget v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->licensedOfferType:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    if-eqz v5, :cond_1d

    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1d
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferId:Z

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    const/16 v5, 0x13

    iget-object v6, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1f
    iput v4, p0, Lcom/google/android/finsky/protos/Common$Offer;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasMicros:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->currencyCode:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCurrencyCode:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferType:Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$RentalTerms;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDate:Z

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    if-nez v5, :cond_8

    new-instance v5, Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$SubscriptionTerms;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedName:Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedDescription:Z

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->preorder:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasPreorder:Z

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDateDisplayTimeZoneOffsetMsec:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDateDisplayTimeZoneOffsetMsec:Z

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->licensedOfferType:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasLicensedOfferType:Z

    goto/16 :goto_0

    :sswitch_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    if-nez v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerId:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferId:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Common$Offer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    invoke-virtual {p1, v5, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->convertedPrice:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    if-ne v2, v5, :cond_a

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferType:Z

    if-eqz v2, :cond_b

    :cond_a
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    if-eqz v2, :cond_c

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->rentalTerms:Lcom/google/android/finsky/protos/Common$RentalTerms;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDate:Z

    if-nez v2, :cond_d

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_e

    :cond_d
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_10

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->promotionLabel:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_f

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    if-eqz v2, :cond_11

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionTerms:Lcom/google/android/finsky/protos/Common$SubscriptionTerms;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_11
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedName:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedDescription:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasPreorder:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->preorder:Z

    if-eqz v2, :cond_17

    :cond_16
    const/16 v2, 0xf

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->preorder:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_17
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDateDisplayTimeZoneOffsetMsec:Z

    if-nez v2, :cond_18

    iget v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDateDisplayTimeZoneOffsetMsec:I

    if-eqz v2, :cond_19

    :cond_18
    const/16 v2, 0x10

    iget v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDateDisplayTimeZoneOffsetMsec:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19
    iget v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->licensedOfferType:I

    if-ne v2, v5, :cond_1a

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasLicensedOfferType:Z

    if-eqz v2, :cond_1b

    :cond_1a
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->licensedOfferType:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1b
    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    if-eqz v2, :cond_1c

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1c
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOfferId:Z

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1e
    return-void
.end method
