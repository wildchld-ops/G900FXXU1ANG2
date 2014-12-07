.class public final Lcom/google/android/finsky/protos/Doc$DocumentVariant;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentVariant"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;


# instance fields
.field public autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

.field public categoryId:[Ljava/lang/String;

.field public channelId:J

.field public child:[Lcom/google/android/finsky/protos/Doc$Document;

.field public decoration:[Lcom/google/android/finsky/protos/Doc$Document;

.field public hasChannelId:Z

.field public hasRecentChanges:Z

.field public hasSubtitle:Z

.field public hasTitle:Z

.field public hasVariationType:Z

.field public image:[Lcom/google/android/finsky/protos/Doc$Image;

.field public offer:[Lcom/google/android/finsky/protos/Common$Offer;

.field public productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

.field public recentChanges:Ljava/lang/String;

.field public rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

.field public snippet:[Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public variationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    sput-object v0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasSubtitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasChannelId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->clear()Lcom/google/android/finsky/protos/Doc$DocumentVariant;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Doc$DocumentVariant;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->variationType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasVariationType:Z

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->title:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasTitle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->subtitle:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasSubtitle:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->recentChanges:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    sget-object v0, Lcom/google/android/finsky/protos/Doc$TranslatedText;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    sget-object v0, Lcom/google/android/finsky/protos/Common$Offer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    iput-object v1, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->channelId:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasChannelId:Z

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Document;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Document;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Document;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    sget-object v0, Lcom/google/android/finsky/protos/Doc$Image;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Doc$Image;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->variationType:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasTitle:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->title:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->recentChanges:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->recentChanges:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v5, v5

    if-lez v5, :cond_9

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    aget-object v2, v5, v3

    if-eqz v2, :cond_8

    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v5, v5

    if-lez v5, :cond_b

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v5, v5

    if-ge v3, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v2, v5, v3

    if-eqz v2, :cond_a

    const/4 v5, 0x7

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasChannelId:Z

    if-nez v5, :cond_c

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->channelId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_d

    :cond_c
    const/16 v5, 0x9

    iget-wide v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->channelId:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-lez v5, :cond_f

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-ge v3, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v2, v5, v3

    if-eqz v2, :cond_e

    const/16 v5, 0xa

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-lez v5, :cond_11

    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v5, v5

    if-ge v3, v5, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v2, v5, v3

    if-eqz v2, :cond_10

    const/16 v5, 0xb

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v5, v5

    if-lez v5, :cond_13

    const/4 v3, 0x0

    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v5, v5

    if-ge v3, v5, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    aget-object v2, v5, v3

    if-eqz v2, :cond_12

    const/16 v5, 0xc

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_15

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_14

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_16
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasSubtitle:Z

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->subtitle:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->subtitle:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_18
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    if-eqz v5, :cond_19

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_19
    iput v4, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$DocumentVariant;
    .locals 8
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

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

    iput v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->variationType:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasVariationType:Z

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/FilterRules$Rule;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->title:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasTitle:Z

    goto :goto_0

    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    if-nez v5, :cond_3

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->recentChanges:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-nez v5, :cond_6

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Doc$TranslatedText;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$TranslatedText;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v1, v5

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/finsky/protos/Doc$TranslatedText;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$TranslatedText;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    goto/16 :goto_0

    :sswitch_7
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-nez v5, :cond_9

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v1, v5

    goto :goto_5

    :cond_a
    new-instance v5, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Common$Offer;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->channelId:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasChannelId:Z

    goto/16 :goto_0

    :sswitch_9
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    if-nez v5, :cond_c

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v1, v5

    goto :goto_7

    :cond_d
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    goto/16 :goto_0

    :sswitch_a
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    if-nez v5, :cond_f

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_10

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v1, v5

    goto :goto_9

    :cond_10
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Document;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Document;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    goto/16 :goto_0

    :sswitch_b
    const/16 v5, 0x62

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-nez v5, :cond_12

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v1, :cond_11

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_13

    new-instance v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v1, v5

    goto :goto_b

    :cond_13
    new-instance v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    goto/16 :goto_0

    :sswitch_c
    const/16 v5, 0x6a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    if-nez v5, :cond_15

    move v1, v4

    :goto_d
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_e
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_16

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_15
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_d

    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->subtitle:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasSubtitle:Z

    goto/16 :goto_0

    :sswitch_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    if-nez v5, :cond_17

    new-instance v5, Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Doc$ProductSpec;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    :cond_17
    iget-object v5, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x82 -> :sswitch_e
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Doc$DocumentVariant;

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

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->variationType:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->rule:Lcom/google/android/finsky/protos/FilterRules$Rule;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasTitle:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->title:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->snippet:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasRecentChanges:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->recentChanges:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->recentChanges:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v2, v2

    if-lez v2, :cond_8

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->autoTranslation:[Lcom/google/android/finsky/protos/Doc$TranslatedText;

    aget-object v0, v2, v1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-lez v2, :cond_a

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_9

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasChannelId:Z

    if-nez v2, :cond_b

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->channelId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    :cond_b
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->channelId:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_c
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-lez v2, :cond_e

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->child:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v0, v2, v1

    if-eqz v0, :cond_d

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-lez v2, :cond_10

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->decoration:[Lcom/google/android/finsky/protos/Doc$Document;

    aget-object v0, v2, v1

    if-eqz v0, :cond_f

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v2, v2

    if-lez v2, :cond_12

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v2, v2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    aget-object v0, v2, v1

    if-eqz v0, :cond_11

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_14

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->categoryId:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_13

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->hasSubtitle:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->subtitle:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_16
    iget-object v2, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    if-eqz v2, :cond_17

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/finsky/protos/Doc$DocumentVariant;->productSpec:Lcom/google/android/finsky/protos/Doc$ProductSpec;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_17
    return-void
.end method
