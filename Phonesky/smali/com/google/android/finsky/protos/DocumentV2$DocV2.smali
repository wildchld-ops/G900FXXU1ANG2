.class public final Lcom/google/android/finsky/protos/DocumentV2$DocV2;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocV2"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;


# instance fields
.field public aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

.field public annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

.field public availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

.field public backendDocid:Ljava/lang/String;

.field public backendId:I

.field public backendUrl:Ljava/lang/String;

.field public child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field public containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

.field public creator:Ljava/lang/String;

.field public descriptionHtml:Ljava/lang/String;

.field public details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

.field public detailsReusable:Z

.field public detailsUrl:Ljava/lang/String;

.field public docType:I

.field public docid:Ljava/lang/String;

.field public hasBackendDocid:Z

.field public hasBackendId:Z

.field public hasBackendUrl:Z

.field public hasCreator:Z

.field public hasDescriptionHtml:Z

.field public hasDetailsReusable:Z

.field public hasDetailsUrl:Z

.field public hasDocType:Z

.field public hasDocid:Z

.field public hasPurchaseDetailsUrl:Z

.field public hasReviewsUrl:Z

.field public hasServerLogsCookie:Z

.field public hasShareUrl:Z

.field public hasSubtitle:Z

.field public hasTitle:Z

.field public hasTranslatedDescriptionHtml:Z

.field public image:[Lcom/google/android/finsky/protos/Doc$Image;

.field public offer:[Lcom/google/android/finsky/protos/Common$Offer;

.field public productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

.field public purchaseDetailsUrl:Ljava/lang/String;

.field public reviewsUrl:Ljava/lang/String;

.field public serverLogsCookie:[B

.field public shareUrl:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public translatedDescriptionHtml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocid:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasSubtitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasCreator:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTranslatedDescriptionHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasShareUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasServerLogsCookie:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->clear()Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocid:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocType:Z

    iput v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendId:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasSubtitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasCreator:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTranslatedDescriptionHtml:Z

    sget-object v0, Lcom/google/android/finsky/protos/Common$Offer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Image;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    sget-object v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasShareUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->purchaseDetailsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasServerLogsCookie:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocid:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    if-ne v3, v5, :cond_4

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocType:Z

    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendId:Z

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTitle:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasCreator:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v3, v3

    if-lez v3, :cond_f

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v3, v3

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v0, v3, v1

    if-eqz v0, :cond_e

    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_f
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-eqz v3, :cond_10

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_10
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v3, v3

    if-lez v3, :cond_12

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v3, v3

    if-ge v1, v3, :cond_12

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    aget-object v0, v3, v1

    if-eqz v0, :cond_11

    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-lez v3, :cond_14

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v3, v3

    if-ge v1, v3, :cond_14

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v3, v1

    if-eqz v0, :cond_13

    const/16 v3, 0xb

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    if-eqz v3, :cond_15

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_15
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-eqz v3, :cond_16

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_16
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-eqz v3, :cond_17

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_17
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v3, :cond_18

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_18
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1a
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasShareUrl:Z

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1c
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    if-nez v3, :cond_1d

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1e
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    if-nez v3, :cond_1f

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_20
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->purchaseDetailsUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_21
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->purchaseDetailsUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_22
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    if-nez v3, :cond_23

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    if-eqz v3, :cond_24

    :cond_23
    const/16 v3, 0x15

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_24
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasSubtitle:Z

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_25
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_26
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTranslatedDescriptionHtml:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_27
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_28
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasServerLogsCookie:Z

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    sget-object v4, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_29
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2a
    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    if-eqz v3, :cond_2b

    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2b
    iput v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .locals 7
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

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

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocid:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocType:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendId:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTitle:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasCreator:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    goto :goto_0

    :sswitch_8
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

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
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Availability;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v1, v5

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v5, :cond_9

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v5

    goto :goto_5

    :cond_a
    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    if-nez v5, :cond_b

    new-instance v5, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-nez v5, :cond_c

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    :cond_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-nez v5, :cond_d

    new-instance v5, Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Rating$AggregateRating;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-nez v5, :cond_e

    new-instance v5, Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocumentV2$Annotations;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasShareUrl:Z

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->purchaseDetailsUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasSubtitle:Z

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTranslatedDescriptionHtml:Z

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasServerLogsCookie:Z

    goto/16 :goto_0

    :sswitch_19
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    if-nez v5, :cond_f

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$ProductDetails;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocid:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendDocid:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    if-ne v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocType:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendId:Z

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTitle:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasCreator:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-lez v2, :cond_f

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_e

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-eqz v2, :cond_10

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v2, v2

    if-lez v2, :cond_12

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    aget-object v0, v2, v1

    if-eqz v0, :cond_11

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-lez v2, :cond_14

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v2, v1

    if-eqz v0, :cond_13

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    if-eqz v2, :cond_15

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_15
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-eqz v2, :cond_16

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_16
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-eqz v2, :cond_17

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_17
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v2, :cond_18

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_18
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1a
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasShareUrl:Z

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1c
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasReviewsUrl:Z

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1e
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasBackendUrl:Z

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_20
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasPurchaseDetailsUrl:Z

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->purchaseDetailsUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->purchaseDetailsUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_22
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsReusable:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    if-eqz v2, :cond_24

    :cond_23
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_24
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasSubtitle:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_26
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasTranslatedDescriptionHtml:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_27
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_28
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasServerLogsCookie:Z

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_29
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_2a
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    if-eqz v2, :cond_2b

    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2b
    return-void
.end method
