.class public final Lcom/google/android/finsky/protos/DocDetails$AppDetails;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppDetails"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$AppDetails;


# instance fields
.field public appCategory:[Ljava/lang/String;

.field public appType:Ljava/lang/String;

.field public autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

.field public certificateHash:[Ljava/lang/String;

.field public certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

.field public contentRating:I

.field public declaresIab:Z

.field public developerEmail:Ljava/lang/String;

.field public developerName:Ljava/lang/String;

.field public developerWebsite:Ljava/lang/String;

.field public file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

.field public hasAppType:Z

.field public hasContentRating:Z

.field public hasDeclaresIab:Z

.field public hasDeveloperEmail:Z

.field public hasDeveloperName:Z

.field public hasDeveloperWebsite:Z

.field public hasInstallationSize:Z

.field public hasMajorVersionNumber:Z

.field public hasNumDownloads:Z

.field public hasPackageName:Z

.field public hasRecentChangesHtml:Z

.field public hasTitle:Z

.field public hasUploadDate:Z

.field public hasVariesByAccount:Z

.field public hasVersionCode:Z

.field public hasVersionString:Z

.field public installationSize:J

.field public majorVersionNumber:I

.field public numDownloads:Ljava/lang/String;

.field public oBSOLETEPermission:[Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

.field public recentChangesHtml:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uploadDate:Ljava/lang/String;

.field public variesByAccount:Z

.field public versionCode:I

.field public versionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    sput-object v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasTitle:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasContentRating:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasPackageName:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasUploadDate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasAppType:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVariesByAccount:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeclaresIab:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->clear()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocDetails$AppDetails;
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    iput v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->majorVersionNumber:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    iput v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->title:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasTitle:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    iput v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasContentRating:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$AppPermission;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasPackageName:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasUploadDate:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasAppType:Z

    sget-object v0, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVariesByAccount:Z

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeclaresIab:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 10

    const/4 v9, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerName:Ljava/lang/String;

    invoke-static {v9, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->majorVersionNumber:I

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->majorVersionNumber:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    if-eqz v5, :cond_5

    :cond_4
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_7
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasTitle:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->title:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_c
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasContentRating:Z

    if-nez v5, :cond_d

    iget v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    if-eqz v5, :cond_e

    :cond_d
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_e
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    if-nez v5, :cond_f

    iget-wide v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_10

    :cond_f
    const/16 v5, 0x9

    iget-wide v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_10
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_12

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_12
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    :cond_13
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    :cond_14
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_15
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_17
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    if-nez v5, :cond_18

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_18
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_19
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasPackageName:Z

    if-nez v5, :cond_1a

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_1a
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1b
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    :cond_1c
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1d
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasUploadDate:Z

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1f
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    array-length v5, v5

    if-lez v5, :cond_21

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    array-length v5, v5

    if-ge v3, v5, :cond_21

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    aget-object v2, v5, v3

    if-eqz v2, :cond_20

    const/16 v5, 0x11

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_21
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasAppType:Z

    if-nez v5, :cond_22

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    :cond_22
    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_23
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_26

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_25

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_24

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_25
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_26
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    array-length v5, v5

    if-lez v5, :cond_28

    const/4 v3, 0x0

    :goto_4
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    array-length v5, v5

    if-ge v3, v5, :cond_28

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    aget-object v2, v5, v3

    if-eqz v2, :cond_27

    const/16 v5, 0x14

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_28
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVariesByAccount:Z

    if-nez v5, :cond_29

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    if-eq v5, v9, :cond_2a

    :cond_29
    const/16 v5, 0x15

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2a
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    array-length v5, v5

    if-lez v5, :cond_2c

    const/4 v3, 0x0

    :goto_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    array-length v5, v5

    if-ge v3, v5, :cond_2c

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    aget-object v2, v5, v3

    if-eqz v2, :cond_2b

    const/16 v5, 0x16

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2c
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2e

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    aget-object v2, v5, v3

    if-eqz v2, :cond_2d

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_2e
    add-int/2addr v4, v1

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    :cond_2f
    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeclaresIab:Z

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    if-eqz v5, :cond_31

    :cond_30
    const/16 v5, 0x18

    iget-boolean v6, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_31
    iput v4, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->cachedSize:I

    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$AppDetails;
    .locals 8
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerName:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->majorVersionNumber:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->title:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasTitle:Z

    goto :goto_0

    :sswitch_6
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasContentRating:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    goto :goto_0

    :sswitch_9
    const/16 v5, 0x52

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    if-nez v5, :cond_5

    move v1, v4

    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasPackageName:Z

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasUploadDate:Z

    goto/16 :goto_0

    :sswitch_10
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    if-nez v5, :cond_8

    move v1, v4

    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    array-length v1, v5

    goto :goto_5

    :cond_9
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasAppType:Z

    goto/16 :goto_0

    :sswitch_12
    const/16 v5, 0x9a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    if-nez v5, :cond_b

    move v1, v4

    :goto_7
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_13
    const/16 v5, 0xa2

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    if-nez v5, :cond_e

    move v1, v4

    :goto_9
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_f

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$AppPermission;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    array-length v1, v5

    goto :goto_9

    :cond_f
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$AppPermission;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVariesByAccount:Z

    goto/16 :goto_0

    :sswitch_15
    const/16 v5, 0xb2

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    if-nez v5, :cond_11

    move v1, v4

    :goto_b
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    if-eqz v1, :cond_10

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_12

    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    array-length v1, v5

    goto :goto_b

    :cond_12
    new-instance v5, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/DocDetails$CertificateSet;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    goto/16 :goto_0

    :sswitch_16
    const/16 v5, 0xba

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    if-nez v5, :cond_14

    move v1, v4

    :goto_d
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_e
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_15

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_14
    iget-object v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_d

    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeclaresIab:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
        0x9a -> :sswitch_12
        0xa2 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xb2 -> :sswitch_15
        0xba -> :sswitch_16
        0xc0 -> :sswitch_17
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperName:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerName:Ljava/lang/String;

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasMajorVersionNumber:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->majorVersionNumber:I

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->majorVersionNumber:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionCode:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasTitle:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->title:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_b

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appCategory:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_a

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasContentRating:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    if-eqz v2, :cond_d

    :cond_c
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    if-nez v2, :cond_e

    iget-wide v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    :cond_e
    const/16 v2, 0x9

    iget-wide v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_11

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->oBSOLETEPermission:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_10

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_11
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperEmail:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_13
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeveloperWebsite:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_15
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasNumDownloads:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_17
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasPackageName:Z

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_19
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasRecentChangesHtml:Z

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasUploadDate:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1d
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    array-length v2, v2

    if-lez v2, :cond_1f

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1e

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasAppType:Z

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->appType:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_21
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_23

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateHash:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_22

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    array-length v2, v2

    if-lez v2, :cond_25

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->permission:[Lcom/google/android/finsky/protos/DocDetails$AppPermission;

    aget-object v0, v2, v1

    if-eqz v0, :cond_24

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_25
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVariesByAccount:Z

    if-nez v2, :cond_26

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    if-eq v2, v6, :cond_27

    :cond_26
    const/16 v2, 0x15

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->variesByAccount:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_27
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    array-length v2, v2

    if-lez v2, :cond_29

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    array-length v2, v2

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->certificateSet:[Lcom/google/android/finsky/protos/DocDetails$CertificateSet;

    aget-object v0, v2, v1

    if-eqz v0, :cond_28

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_29
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2b

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->autoAcquireFreeAppIfHigherVersionAvailableTag:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_2a

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2b
    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasDeclaresIab:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    if-eqz v2, :cond_2d

    :cond_2c
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2d
    return-void
.end method
