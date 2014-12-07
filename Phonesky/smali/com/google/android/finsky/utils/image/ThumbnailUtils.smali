.class public Lcom/google/android/finsky/utils/image/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# direct methods
.method private static addFifeOptions(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "?fife"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-lez p2, :cond_2

    if-eqz v0, :cond_1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    return-object p0

    :cond_3
    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->addFifeOptions(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static buildFifeUrlWithScaling(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-static {p0}, Lcom/google/android/finsky/receivers/NetworkStateChangedReceiver;->getCachedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getNetworkScaleFactor(Landroid/net/NetworkInfo;)F

    move-result v0

    int-to-float v3, p2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    int-to-float v3, p3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    invoke-static {p1, v2, v1}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/protos/Doc$Image;
    .locals 10
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;II)",
            "Lcom/google/android/finsky/protos/Doc$Image;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p0, :cond_1

    move-object v1, v8

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const v7, 0x7fffffff

    const v5, 0x7fffffff

    const/4 v6, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Doc$Image;

    iget-boolean v9, v1, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-nez v9, :cond_0

    iget-object v9, v1, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iget v4, v9, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->width:I

    iget-object v9, v1, Lcom/google/android/finsky/protos/Doc$Image;->dimension:Lcom/google/android/finsky/protos/Doc$Image$Dimension;

    iget v3, v9, Lcom/google/android/finsky/protos/Doc$Image$Dimension;->height:I

    if-lt v4, p1, :cond_2

    if-lt v3, p2, :cond_2

    if-lt v7, v4, :cond_2

    if-lt v5, v3, :cond_2

    move v7, v4

    move v5, v3

    move-object v6, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    move-object v1, v6

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/protos/Doc$Image;

    move-object v1, v8

    goto :goto_0

    :cond_5
    move-object v1, v8

    goto :goto_0
.end method

.method public static getBestImageUrl(Landroid/content/Context;Ljava/util/List;II)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {p0, v1, p2, p3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrlWithScaling(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v1, p2, p3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/protos/Doc$Image;
    .locals 4
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # I
    .param p2    # I
    .param p3    # [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    aget v1, p3, v0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getBestImage(Ljava/util/List;II)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getNetworkScaleFactor(Landroid/net/NetworkInfo;)F
    .locals 4
    .param p0    # Landroid/net/NetworkInfo;

    sget-object v2, Lcom/google/android/finsky/config/G;->percentOfImageSize3G:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    if-nez p0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/google/android/finsky/config/G;->percentOfImageSizeWifi:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/google/android/finsky/config/G;->percentOfImageSize3G:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/google/android/finsky/config/G;->percentOfImageSize4G:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/google/android/finsky/config/G;->percentOfImageSize2G:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPageHeaderBannerUrlFromDocument(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Z
    .param p3    # I
    .param p4    # I

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1, p3, p4}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getBestImageUrl(Landroid/content/Context;Ljava/util/List;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static getPromoBitmapUrlFromDocument(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getBestImageUrl(Landroid/content/Context;Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
