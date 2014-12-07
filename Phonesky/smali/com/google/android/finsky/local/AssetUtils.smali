.class public Lcom/google/android/finsky/local/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public static assetResponseToDeliveryData(Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 10
    .param p0    # Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;

    const/4 v9, 0x1

    new-instance v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct {v6}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    iget-object v5, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;->installAsset:Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    iget-object v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->blobUrl:Ljava/lang/String;

    iput-object v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadUrl:Ljava/lang/String;

    iput-boolean v9, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadUrl:Z

    iget-wide v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSize:J

    iput-wide v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadSize:J

    iput-boolean v9, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasDownloadSize:Z

    iget-boolean v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->forwardLocked:Z

    iput-boolean v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->forwardLocked:Z

    iput-boolean v9, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasForwardLocked:Z

    iget-wide v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->refundTimeoutMillis:J

    iput-wide v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->refundTimeout:J

    iput-boolean v9, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasRefundTimeout:Z

    iget-object v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->assetSignature:Ljava/lang/String;

    iput-object v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->signature:Ljava/lang/String;

    iput-boolean v9, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->hasSignature:Z

    new-instance v2, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    iget-object v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieName:Ljava/lang/String;

    iput-object v7, v2, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->name:Ljava/lang/String;

    iput-boolean v9, v2, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->hasName:Z

    iget-object v7, v5, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->downloadAuthCookieValue:Ljava/lang/String;

    iput-object v7, v2, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->value:Ljava/lang/String;

    iput-boolean v9, v2, Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;->hasValue:Z

    new-array v7, v9, [Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    iput-object v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->downloadAuthCookie:[Lcom/google/android/finsky/protos/AndroidAppDelivery$HttpCookie;

    iget-object v7, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;->additionalFile:[Lcom/google/android/finsky/protos/VendingProtos$FileMetadataProto;

    array-length v0, v7

    if-lez v0, :cond_0

    new-array v7, v0, [Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    iput-object v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/protos/VendingProtos$GetAssetResponseProto;->additionalFile:[Lcom/google/android/finsky/protos/VendingProtos$FileMetadataProto;

    aget-object v3, v7, v4

    new-instance v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    iget v7, v3, Lcom/google/android/finsky/protos/VendingProtos$FileMetadataProto;->fileType:I

    iput v7, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->fileType:I

    iput-boolean v9, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasFileType:Z

    iget v7, v3, Lcom/google/android/finsky/protos/VendingProtos$FileMetadataProto;->versionCode:I

    iput v7, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    iput-boolean v9, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasVersionCode:Z

    iget-wide v7, v3, Lcom/google/android/finsky/protos/VendingProtos$FileMetadataProto;->size:J

    iput-wide v7, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    iput-boolean v9, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasSize:Z

    iget-object v7, v3, Lcom/google/android/finsky/protos/VendingProtos$FileMetadataProto;->downloadUrl:Ljava/lang/String;

    iput-object v7, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    iput-boolean v9, v1, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->hasDownloadUrl:Z

    iget-object v7, v6, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    aput-object v1, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method public static extractObb(Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;
    .locals 11
    .param p0    # Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p2, :cond_0

    const/4 v10, 0x1

    :goto_0
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;->additionalFile:[Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;

    aget-object v7, v0, v8

    iget v0, v7, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->fileType:I

    if-ne v0, v10, :cond_1

    iget v2, v7, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->versionCode:I

    iget-object v3, v7, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->downloadUrl:Ljava/lang/String;

    iget-wide v4, v7, Lcom/google/android/finsky/protos/AndroidAppDelivery$AppFileMetadata;->size:J

    const/4 v6, 0x4

    move v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JI)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    :goto_2
    return-object v9

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static makeAssetId(Lcom/google/android/finsky/protos/DocDetails$AppDetails;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    iget-object v0, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-static {v0, v1}, Lcom/google/android/finsky/local/AssetUtils;->makeAssetId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeAssetId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static totalDeliverySize(Lcom/google/android/finsky/protos/DocDetails$AppDetails;)J
    .locals 13
    .param p0    # Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    const-wide/16 v11, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->file:[Lcom/google/android/finsky/protos/DocDetails$FileMetadata;

    aget-object v7, v1, v9

    iget v8, v7, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->fileType:I

    packed-switch v8, :pswitch_data_0

    const-string v1, "Bad file type %d in %s entry# %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_0
    iget-wide v1, v7, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    add-long/2addr v11, v1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    iget v2, v7, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->versionCode:I

    const/4 v3, 0x0

    iget-wide v4, v7, Lcom/google/android/finsky/protos/DocDetails$FileMetadata;->size:J

    const/4 v6, 0x4

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JI)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/finsky/download/obb/Obb;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {v10}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v1

    add-long/2addr v11, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    return-wide v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
