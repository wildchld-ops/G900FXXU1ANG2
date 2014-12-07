.class public final Lcom/google/android/finsky/protos/DocumentV1$DocV1;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocV1"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;


# instance fields
.field public creator:Ljava/lang/String;

.field public descriptionHtml:Ljava/lang/String;

.field public details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

.field public detailsUrl:Ljava/lang/String;

.field public docid:Ljava/lang/String;

.field public finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

.field public hasCreator:Z

.field public hasDescriptionHtml:Z

.field public hasDetailsUrl:Z

.field public hasDocid:Z

.field public hasMoreByBrowseUrl:Z

.field public hasMoreByHeader:Z

.field public hasMoreByListUrl:Z

.field public hasRelatedBrowseUrl:Z

.field public hasRelatedHeader:Z

.field public hasRelatedListUrl:Z

.field public hasReviewsUrl:Z

.field public hasShareUrl:Z

.field public hasTitle:Z

.field public hasWarningMessage:Z

.field public moreByBrowseUrl:Ljava/lang/String;

.field public moreByHeader:Ljava/lang/String;

.field public moreByListUrl:Ljava/lang/String;

.field public plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

.field public relatedBrowseUrl:Ljava/lang/String;

.field public relatedHeader:Ljava/lang/String;

.field public relatedListUrl:Ljava/lang/String;

.field public reviewsUrl:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public warningMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDocid:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasShareUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasCreator:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->clear()Lcom/google/android/finsky/protos/DocumentV1$DocV1;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV1$DocV1;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->docid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDocid:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->detailsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->reviewsUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedListUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedBrowseUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedHeader:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByListUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByBrowseUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByHeader:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->shareUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasShareUrl:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->creator:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasCreator:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->descriptionHtml:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->warningMessage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->docid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->detailsUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->detailsUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->reviewsUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->reviewsUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedListUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedListUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByListUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByListUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasShareUrl:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->shareUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->shareUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasCreator:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->creator:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->creator:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->descriptionHtml:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->descriptionHtml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedBrowseUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedBrowseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByBrowseUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByBrowseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedHeader:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedHeader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByHeader:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByHeader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasTitle:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-eqz v1, :cond_1a

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->warningMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->warningMessage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV1$DocV1;
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->docid:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDocid:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->detailsUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->reviewsUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedListUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByListUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->shareUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasShareUrl:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->creator:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasCreator:Z

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->descriptionHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedBrowseUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByBrowseUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedHeader:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByHeader:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->title:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasTitle:Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->warningMessage:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasWarningMessage:Z

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
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV1$DocV1;

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

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->finskyDoc:Lcom/google/android/finsky/protos/Doc$Document;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->docid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDetailsUrl:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->detailsUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->detailsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasReviewsUrl:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->reviewsUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->reviewsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedListUrl:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedListUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedListUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByListUrl:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByListUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByListUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasShareUrl:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->shareUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasCreator:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->creator:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->creator:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-eqz v0, :cond_d

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasDescriptionHtml:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->descriptionHtml:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->descriptionHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedBrowseUrl:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedBrowseUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedBrowseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByBrowseUrl:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByBrowseUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByBrowseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasRelatedHeader:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedHeader:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->relatedHeader:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasMoreByHeader:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByHeader:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->moreByHeader:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasTitle:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-eqz v0, :cond_1a

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->hasWarningMessage:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->warningMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocumentV1$DocV1;->warningMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1c
    return-void
.end method
