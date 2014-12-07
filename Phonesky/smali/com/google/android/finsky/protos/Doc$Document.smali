.class public final Lcom/google/android/finsky/protos/Doc$Document;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;


# instance fields
.field public aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

.field public availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

.field public categoryId:[Ljava/lang/String;

.field public child:[Lcom/google/android/finsky/protos/Doc$Document;

.field public consumptionUrl:Ljava/lang/String;

.field public decoration:[Lcom/google/android/finsky/protos/Doc$Document;

.field public docid:Lcom/google/android/finsky/protos/Common$Docid;

.field public documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

.field public estimatedNumChildren:I

.field public fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

.field public hasConsumptionUrl:Z

.field public hasEstimatedNumChildren:Z

.field public hasPrivacyPolicyUrl:Z

.field public hasSubtitle:Z

.field public hasTitle:Z

.field public hasUrl:Z

.field public image:[Lcom/google/android/finsky/protos/Doc$Image;

.field public offer:[Lcom/google/android/finsky/protos/Common$Offer;

.field public parent:[Lcom/google/android/finsky/protos/Doc$Document;

.field public priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

.field public privacyPolicyUrl:Ljava/lang/String;

.field public productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

.field public sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

.field public snippet:[Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Doc$Document;

    sput-object v0, Lcom/google/android/finsky/protos/Doc$Document;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasSubtitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasEstimatedNumChildren:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasConsumptionUrl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Doc$Document;->clear()Lcom/google/android/finsky/protos/Doc$Document;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Doc$Document;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->subtitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasSubtitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->url:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasUrl:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$TranslatedText;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    sget-object v0, Lcom/google/android/finsky/protos/Common$Offer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Image;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Document;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    iput v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->estimatedNumChildren:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasEstimatedNumChildren:Z

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Document;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Document;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->privacyPolicyUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->consumptionUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasConsumptionUrl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$Document;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasTitle:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->title:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasUrl:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->url:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v5, :cond_a

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-eqz v5, :cond_b

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v5, v5

    if-lez v5, :cond_d

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v5, v5

    if-ge v3, v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    aget-object v2, v5, v3

    if-eqz v2, :cond_c

    const/16 v5, 0xa

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-lez v5, :cond_f

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-ge v3, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v2, v5, v3

    if-eqz v2, :cond_e

    const/16 v5, 0xb

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-eqz v5, :cond_10

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_10
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v5, v5

    if-lez v5, :cond_12

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v5, v5

    if-ge v3, v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v2, v5, v3

    if-eqz v2, :cond_11

    const/16 v5, 0xe

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v5, v5

    if-lez v5, :cond_14

    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v5, v5

    if-ge v3, v5, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    aget-object v2, v5, v3

    if-eqz v2, :cond_13

    const/16 v5, 0xf

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_14
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    array-length v5, v5

    if-lez v5, :cond_16

    const/4 v3, 0x0

    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    array-length v5, v5

    if-ge v3, v5, :cond_16

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    aget-object v2, v5, v3

    if-eqz v2, :cond_15

    const/16 v5, 0x10

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_16
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_18

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_18
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_19
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-lez v5, :cond_1b

    const/4 v3, 0x0

    :goto_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-ge v3, v5, :cond_1b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v2, v5, v3

    if-eqz v2, :cond_1a

    const/16 v5, 0x12

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-lez v5, :cond_1d

    const/4 v3, 0x0

    :goto_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-ge v3, v5, :cond_1d

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v2, v5, v3

    if-eqz v2, :cond_1c

    const/16 v5, 0x13

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1d
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->privacyPolicyUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    const/16 v5, 0x14

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->privacyPolicyUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1f
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasConsumptionUrl:Z

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->consumptionUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    :cond_20
    const/16 v5, 0x15

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->consumptionUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_21
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasEstimatedNumChildren:Z

    if-nez v5, :cond_22

    iget v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->estimatedNumChildren:I

    if-eqz v5, :cond_23

    :cond_22
    const/16 v5, 0x16

    iget v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->estimatedNumChildren:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_23
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasSubtitle:Z

    if-nez v5, :cond_24

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->subtitle:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_24
    const/16 v5, 0x17

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->subtitle:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_25
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    if-eqz v5, :cond_26

    const/16 v5, 0x18

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_26
    iput v4, p0, Lcom/google/android/finsky/protos/Doc$Document;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$Document;
    .locals 7
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
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    if-nez v5, :cond_2

    new-instance v5, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    if-nez v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->title:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasTitle:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->url:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasUrl:Z

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-nez v5, :cond_8

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Availability;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v5, :cond_a

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_b

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v1, v5

    goto :goto_3

    :cond_b
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    if-nez v5, :cond_d

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v1, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_e

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v1, v5

    goto :goto_5

    :cond_e
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-nez v5, :cond_f

    new-instance v5, Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Rating$AggregateRating;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-nez v5, :cond_11

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_12

    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v1, v5

    goto :goto_7

    :cond_12
    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    goto/16 :goto_0

    :sswitch_d
    const/16 v5, 0x7a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-nez v5, :cond_14

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-eqz v1, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_15

    new-instance v5, Lcom/google/android/finsky/protos/Doc$TranslatedText;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$TranslatedText;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v1, v5

    goto :goto_9

    :cond_15
    new-instance v5, Lcom/google/android/finsky/protos/Doc$TranslatedText;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$TranslatedText;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    goto/16 :goto_0

    :sswitch_e
    const/16 v5, 0x82

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    if-nez v5, :cond_17

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    if-eqz v1, :cond_16

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_18

    new-instance v5, Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$DocumentVariant;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    array-length v1, v5

    goto :goto_b

    :cond_18
    new-instance v5, Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$DocumentVariant;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    goto/16 :goto_0

    :sswitch_f
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    if-nez v5, :cond_1a

    move v1, v4

    :goto_d
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_e
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1b

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_d

    :cond_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    const/16 v5, 0x92

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    if-nez v5, :cond_1d

    move v1, v4

    :goto_f
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v1, :cond_1c

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    :goto_10
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1e

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1d
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v1, v5

    goto :goto_f

    :cond_1e
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    goto/16 :goto_0

    :sswitch_11
    const/16 v5, 0x9a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    if-nez v5, :cond_20

    move v1, v4

    :goto_11
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v1, :cond_1f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    :goto_12
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_21

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v1, v5

    goto :goto_11

    :cond_21
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->privacyPolicyUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->consumptionUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasConsumptionUrl:Z

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->estimatedNumChildren:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasEstimatedNumChildren:Z

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->subtitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasSubtitle:Z

    goto/16 :goto_0

    :sswitch_16
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    if-nez v5, :cond_22

    new-instance v5, Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$ProductSpec;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    :cond_22
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

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
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0x92 -> :sswitch_10
        0x9a -> :sswitch_11
        0xa2 -> :sswitch_12
        0xaa -> :sswitch_13
        0xb0 -> :sswitch_14
        0xba -> :sswitch_15
        0xc2 -> :sswitch_16
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Doc$Document;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$Document;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->fetchDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->sampleDocid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasTitle:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->title:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasUrl:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->url:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->url:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->snippet:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v2, :cond_9

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->priceDeprecated:Lcom/google/android/finsky/protos/Common$Offer;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-eqz v2, :cond_a

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v2, v2

    if-lez v2, :cond_c

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    aget-object v0, v2, v1

    if-eqz v0, :cond_b

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-lez v2, :cond_e

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v0, v2, v1

    if-eqz v0, :cond_d

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-eqz v2, :cond_f

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-lez v2, :cond_11

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_10

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v2, v2

    if-lez v2, :cond_13

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->translatedSnippet:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    aget-object v0, v2, v1

    if-eqz v0, :cond_12

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    array-length v2, v2

    if-lez v2, :cond_15

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->documentVariant:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    aget-object v0, v2, v1

    if-eqz v0, :cond_14

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_17

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->categoryId:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_16

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-lez v2, :cond_19

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v0, v2, v1

    if-eqz v0, :cond_18

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-lez v2, :cond_1b

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->parent:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1a

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasPrivacyPolicyUrl:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->privacyPolicyUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1d
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasConsumptionUrl:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->consumptionUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->consumptionUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1f
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasEstimatedNumChildren:Z

    if-nez v2, :cond_20

    iget v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->estimatedNumChildren:I

    if-eqz v2, :cond_21

    :cond_20
    const/16 v2, 0x16

    iget v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->estimatedNumChildren:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_21
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->hasSubtitle:Z

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->subtitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_23
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    if-eqz v2, :cond_24

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$Document;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_24
    return-void
.end method
