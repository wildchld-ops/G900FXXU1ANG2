.class public final Lcom/google/android/finsky/protos/DocumentV2$Annotations;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotations"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Annotations;


# instance fields
.field public badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

.field public badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

.field public docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

.field public hasOfferNote:Z

.field public hasPrivacyPolicyUrl:Z

.field public link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

.field public oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

.field public offerNote:Ljava/lang/String;

.field public optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

.field public plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

.field public privacyPolicyUrl:Ljava/lang/String;

.field public promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

.field public sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

.field public subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field public suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

.field public template:Lcom/google/android/finsky/protos/DocumentV2$Template;

.field public warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasOfferNote:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->clear()Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$Annotations;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    sget-object v0, Lcom/google/android/finsky/protos/DocAnnotations$Warning;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    sget-object v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    sget-object v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    sget-object v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    sget-object v0, Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasOfferNote:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v3, v3

    if-lez v3, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    aget-object v0, v3, v1

    if-eqz v0, :cond_3

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v3, v3

    if-lez v3, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v3, v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v0, v3, v1

    if-eqz v0, :cond_8

    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v3, v3

    if-lez v3, :cond_b

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v0, v3, v1

    if-eqz v0, :cond_a

    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    if-eqz v3, :cond_c

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_c
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_d

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_e

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_e
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    array-length v3, v3

    if-lez v3, :cond_10

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    array-length v3, v3

    if-ge v1, v3, :cond_10

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    aget-object v0, v3, v1

    if-eqz v0, :cond_f

    const/16 v3, 0xd

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasOfferNote:Z

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_12
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-lez v3, :cond_14

    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-ge v1, v3, :cond_14

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v3, v1

    if-eqz v0, :cond_13

    const/16 v3, 0x10

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    if-eqz v3, :cond_15

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_15
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_17
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    if-eqz v3, :cond_18

    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_18
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-eqz v3, :cond_19

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_19
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    array-length v3, v3

    if-lez v3, :cond_1b

    const/4 v1, 0x0

    :goto_5
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    array-length v3, v3

    if-ge v1, v3, :cond_1b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    aget-object v0, v3, v1

    if-eqz v0, :cond_1a

    const/16 v3, 0x15

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_1c

    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1c
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_1d

    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1d
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v3, :cond_1e

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1e
    iput v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Annotations;
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
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-nez v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-nez v5, :cond_5

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Warning;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v1, v5

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Warning;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_8

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    if-nez v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$Template;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$Template;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-nez v5, :cond_b

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Badge;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v1, v5

    goto :goto_3

    :cond_c
    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Badge;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x4a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-nez v5, :cond_e

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Badge;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v1, v5

    goto :goto_5

    :cond_f
    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Badge;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    if-nez v5, :cond_10

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Link;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Link;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    :cond_10
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_11

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_12

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v5, 0x6a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    if-nez v5, :cond_14

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    if-eqz v1, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_15

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    array-length v1, v5

    goto :goto_7

    :cond_15
    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasOfferNote:Z

    goto/16 :goto_0

    :sswitch_f
    const/16 v5, 0x82

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v5, :cond_17

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v1, :cond_16

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_18

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_17
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v5

    goto :goto_9

    :cond_18
    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    :sswitch_10
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    if-nez v5, :cond_19

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    :cond_19
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    goto/16 :goto_0

    :sswitch_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    if-nez v5, :cond_1a

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    :cond_1a
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-nez v5, :cond_1b

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$Warning;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    :cond_1b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_14
    const/16 v5, 0xaa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    if-nez v5, :cond_1d

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    if-eqz v1, :cond_1c

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1e

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    array-length v1, v5

    goto :goto_b

    :cond_1e
    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    goto/16 :goto_0

    :sswitch_15
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_1f

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_1f
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_20

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_20
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-nez v5, :cond_21

    new-instance v5, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :cond_21
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

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
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa2 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb2 -> :sswitch_15
        0xba -> :sswitch_16
        0xc2 -> :sswitch_17
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v2, v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    aget-object v0, v2, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v2, v2

    if-lez v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v0, v2, v1

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v2, v2

    if-lez v2, :cond_b

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v0, v2, v1

    if-eqz v0, :cond_a

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    if-eqz v2, :cond_c

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_d

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_e

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    array-length v2, v2

    if-lez v2, :cond_10

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->promotedDoc:[Lcom/google/android/finsky/protos/DocAnnotations$PromotedDoc;

    aget-object v0, v2, v1

    if-eqz v0, :cond_f

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasOfferNote:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-lez v2, :cond_14

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v2, v1

    if-eqz v0, :cond_13

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    if-eqz v2, :cond_15

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->oBSOLETEReason:Lcom/google/android/finsky/protos/DocumentV2$OBSOLETE_Reason;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_15
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_17
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    if-eqz v2, :cond_18

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-eqz v2, :cond_19

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_19
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    array-length v2, v2

    if-lez v2, :cond_1b

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1a

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_1c

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1c
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_1d

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRateAndReview:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1d
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v2, :cond_1e

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1e
    return-void
.end method
