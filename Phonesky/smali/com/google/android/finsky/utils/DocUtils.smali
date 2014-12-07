.class public Lcom/google/android/finsky/utils/DocUtils;
.super Ljava/lang/Object;
.source "DocUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/DocUtils$1;,
        Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
    }
.end annotation


# static fields
.field public static final DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

.field public static final PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "album"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "artist"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "book"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "magazine"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "magazineissue"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newsedition"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newsissue"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "movie"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "song"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tvepisode"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tvseason"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tvshow"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/finsky/utils/DocUtils;->PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 5
    .param p0    # Lcom/google/android/finsky/library/Libraries;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-object v1, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static docidToBackend(Ljava/lang/String;)I
    .locals 5
    .param p0    # Ljava/lang/String;

    const-string v2, "[:-]"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v3, Lcom/google/android/finsky/utils/DocUtils;->DOCUMENT_TYPE_TO_BACKEND:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/utils/DocUtils;->PREFIX_TO_DOCUMENT_TYPE:Ljava/util/Map;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static extractPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I
    .locals 4
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v1

    const v0, 0x7f09028f

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item is not available. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :pswitch_1
    const v0, 0x7f090290

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090291

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090292

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v0, 0x7f090293

    goto :goto_0

    :cond_0
    const v0, 0x7f090294

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090295

    goto :goto_0

    :pswitch_6
    const v0, 0x7f090296

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 11
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Lcom/google/android/finsky/library/Library;

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_5

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v6, v10}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    return-object v0

    :cond_3
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-boolean v8, v2, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-eqz v8, :cond_4

    move-object v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v0

    goto :goto_1
.end method

.method public static getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 11
    .param p1    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;Z)",
            "Lcom/google/android/finsky/protos/Common$Offer;"
        }
    .end annotation

    const/4 v5, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/protos/Common$Offer;

    iget-boolean v9, v6, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v8, v6, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x7

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    :cond_2
    iget-wide v0, v6, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    if-nez p1, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_0

    :cond_3
    cmp-long v9, v0, v3

    if-gez v9, :cond_0

    move-wide v3, v0

    move-object v5, v6

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method public static getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;
    .locals 3
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method should be called only on magazine docs. Passed type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 4
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Lcom/google/android/finsky/library/Library;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Common$Offer;

    goto :goto_0
.end method

.method public static getMusicSubscriptionDocid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "music-subscription_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfValidOffers(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Common$Offer;

    iget-boolean v5, v1, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x7

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method private static getOfferDiscountRatio(Lcom/google/android/finsky/protos/Common$Offer;)F
    .locals 9
    .param p0    # Lcom/google/android/finsky/protos/Common$Offer;

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-wide v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    iget-wide v5, p0, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    sub-long v0, v2, v5

    cmp-long v5, v2, v7

    if-lez v5, :cond_0

    cmp-long v5, v0, v7

    if-lez v5, :cond_0

    long-to-float v4, v0

    long-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method public static getOfferWithLargestDiscountIfAny(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 13
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Lcom/google/android/finsky/library/Library;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v11

    const/16 v12, 0x18

    if-ne v11, v12, :cond_4

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/finsky/utils/DocUtils;->getOfferWithLargestDiscountIfAny(Ljava/util/List;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {v9}, Lcom/google/android/finsky/utils/DocUtils;->getOfferDiscountRatio(Lcom/google/android/finsky/protos/Common$Offer;)F

    move-result v8

    cmpl-float v11, v8, v3

    if-lez v11, :cond_1

    move v3, v8

    move-object v4, v9

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v11, v2, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-eqz v11, :cond_3

    invoke-static {v2}, Lcom/google/android/finsky/utils/DocUtils;->getOfferDiscountRatio(Lcom/google/android/finsky/protos/Common$Offer;)F

    move-result v1

    cmpl-float v11, v1, v3

    if-lez v11, :cond_3

    move v3, v1

    move-object v4, v2

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/finsky/utils/DocUtils;->getOfferWithLargestDiscountIfAny(Ljava/util/List;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v4

    goto :goto_1
.end method

.method private static getOfferWithLargestDiscountIfAny(Ljava/util/List;)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;)",
            "Lcom/google/android/finsky/protos/Common$Offer;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v3}, Lcom/google/android/finsky/utils/DocUtils;->getOfferDiscountRatio(Lcom/google/android/finsky/protos/Common$Offer;)F

    move-result v5

    cmpl-float v6, v5, v0

    if-lez v6, :cond_0

    move v0, v5

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "inapp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->extractPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "subs:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->extractPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;
    .locals 6
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Lcom/google/android/finsky/library/Library;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/library/Library;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public static hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 8
    .param p0    # Lcom/google/android/finsky/library/Libraries;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->isAutoRenewing:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasDiscount(Lcom/google/android/finsky/protos/Common$Offer;)Z
    .locals 2
    .param p0    # Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {p0}, Lcom/google/android/finsky/utils/DocUtils;->getOfferDiscountRatio(Lcom/google/android/finsky/protos/Common$Offer;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInAppDocid(Lcom/google/android/finsky/protos/Common$Docid;)Z
    .locals 2
    .param p0    # Lcom/google/android/finsky/protos/Common$Docid;

    iget v0, p0, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static packageHasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Ljava/lang/String;)Z
    .locals 7
    .param p0    # Lcom/google/android/finsky/library/Libraries;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    invoke-virtual {v4}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->isAutoRenewing:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
