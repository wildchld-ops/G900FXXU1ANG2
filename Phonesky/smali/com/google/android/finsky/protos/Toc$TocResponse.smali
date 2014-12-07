.class public final Lcom/google/android/finsky/protos/Toc$TocResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TocResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$TocResponse;


# instance fields
.field public billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

.field public corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

.field public experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

.field public hasHomeUrl:Z

.field public hasIconOverrideUrl:Z

.field public hasRecsWidgetUrl:Z

.field public hasRequiresUploadDeviceConfig:Z

.field public hasTosCheckboxTextMarketingEmails:Z

.field public hasTosContent:Z

.field public hasTosToken:Z

.field public hasTosVersionDeprecated:Z

.field public homeUrl:Ljava/lang/String;

.field public iconOverrideUrl:Ljava/lang/String;

.field public recsWidgetUrl:Ljava/lang/String;

.field public requiresUploadDeviceConfig:Z

.field public selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

.field public tosCheckboxTextMarketingEmails:Ljava/lang/String;

.field public tosContent:Ljava/lang/String;

.field public tosToken:Ljava/lang/String;

.field public tosVersionDeprecated:I

.field public userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/Toc$TocResponse;

    sput-object v0, Lcom/google/android/finsky/protos/Toc$TocResponse;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$TocResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosContent:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosToken:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasHomeUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRecsWidgetUrl:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/Toc$TocResponse;->clear()Lcom/google/android/finsky/protos/Toc$TocResponse;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/Toc$TocResponse;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iput v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosVersionDeprecated:I

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosContent:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosToken:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasHomeUrl:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    iput-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    iput-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRecsWidgetUrl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v3, v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosVersionDeprecated:I

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosVersionDeprecated:I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosContent:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasHomeUrl:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_a
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosToken:Z

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_c
    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    if-eqz v3, :cond_d

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_d
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_f
    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    if-eqz v3, :cond_10

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_10
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    if-nez v3, :cond_11

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    if-eqz v3, :cond_12

    :cond_11
    const/16 v3, 0xb

    iget-boolean v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_12
    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-eqz v3, :cond_13

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_13
    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRecsWidgetUrl:Z

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_14
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_15
    iput v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Toc$TocResponse;
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
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosVersionDeprecated:I

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosContent:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasHomeUrl:Z

    goto :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    if-nez v5, :cond_4

    new-instance v5, Lcom/google/android/finsky/protos/Toc$Experiments;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Toc$Experiments;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosToken:Z

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/finsky/protos/Toc$UserSettings;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Toc$UserSettings;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    if-nez v5, :cond_6

    new-instance v5, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-nez v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/protos/Toc$BillingConfig;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/Toc$BillingConfig;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    :cond_7
    iget-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRecsWidgetUrl:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/Toc$TocResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/Toc$TocResponse;

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

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosVersionDeprecated:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosVersionDeprecated:I

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosVersionDeprecated:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosContent:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosContent:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasHomeUrl:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->homeUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosCheckboxTextMarketingEmails:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosCheckboxTextMarketingEmails:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasTosToken:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->tosToken:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    if-eqz v2, :cond_d

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->userSettings:Lcom/google/android/finsky/protos/Toc$UserSettings;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasIconOverrideUrl:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->iconOverrideUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    if-eqz v2, :cond_10

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->selfUpdateConfig:Lcom/google/android/finsky/protos/Toc$SelfUpdateConfig;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRequiresUploadDeviceConfig:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    if-eqz v2, :cond_12

    :cond_11
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->requiresUploadDeviceConfig:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_12
    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-eqz v2, :cond_13

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_13
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->hasRecsWidgetUrl:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/finsky/protos/Toc$TocResponse;->recsWidgetUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    return-void
.end method
