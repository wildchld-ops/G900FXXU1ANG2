.class public Lcom/google/android/finsky/api/model/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppSubscriptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mChildDocuments:[Lcom/google/android/finsky/api/model/Document;

.field private final mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field private mImageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedSourceProfileDocument:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/api/model/Document$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/Document$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/Document;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-void
.end method

.method private getImageTypeMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation

    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    iget v3, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    return-object v5
.end method

.method private getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->template:Lcom/google/android/finsky/protos/DocumentV2$Template;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreorderOffer(Lcom/google/android/finsky/protos/Common$Offer;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasOnSaleDate:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canUseAsPartialDocument()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsReusable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAntennaInfo()Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    return-object v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->appDetails:Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppSubscriptionsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v0, v2, v1

    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    new-instance v3, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    goto :goto_0
.end method

.method public getArtistDetails()Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->artistDetails:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailabilityRestriction()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    iget v0, v0, Lcom/google/android/finsky/protos/FilterRules$Availability;->restriction:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAvailableOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendId:I

    return v0
.end method

.method public getBackendDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendDocid:Ljava/lang/String;

    return-object v0
.end method

.method public getBackingDocV2()Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getBadgeContainer()Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBodyOfWorkBrowseUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->browseUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getBodyOfWorkHeader()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getBodyOfWorkListUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionBodyOfWork:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->bookDetails:Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCensoring()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    iget v0, v0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->censoring:I

    return v0
.end method

.method public getChildAt(I)Lcom/google/android/finsky/api/model/Document;
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mChildDocuments:[Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mChildDocuments:[Lcom/google/android/finsky/api/model/Document;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mChildDocuments:[Lcom/google/android/finsky/api/model/Document;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mChildDocuments:[Lcom/google/android/finsky/api/model/Document;

    new-instance v1, Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    aput-object v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mChildDocuments:[Lcom/google/android/finsky/api/model/Document;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v0, v0

    return v0
.end method

.method public getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    return-object v0
.end method

.method public getContainerViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Containers$ContainerView;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCoreContentHeader()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCoreContentListUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCoreContent:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorBadges()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCreditsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->credit:[Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCrossSellSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDealOfTheDayInfo()Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRawDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionReason()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->detailsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->displayArtist:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docid:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentType()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    return v0
.end method

.method public getFirstCreatorBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFirstItemBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFormattedPrice(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFullDocid()Lcom/google/android/finsky/protos/Common$Docid;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    iput v1, v0, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    return-object v0
.end method

.method public getImages(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getImageTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getItemBadges()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLinkAnnotation()Lcom/google/android/finsky/protos/DocAnnotations$Link;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMagazineDetails()Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->magazineDetails:Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->browseUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getMovieRentalTerms()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->rentalTerm:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNeutralDismissal()Lcom/google/android/finsky/protos/DocumentV2$Dismissal;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasNeutralDismissal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->neutralDismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextBannerInfo()Lcom/google/android/finsky/protos/DocumentV2$NextBanner;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    return-object v0
.end method

.method public getNormalizedContentRating()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->contentRating:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Common$Offer;

    iget v4, v2, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    if-ne v4, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getOfferNote()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->offerNote:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getOptimalDeviceClassWarning()Lcom/google/android/finsky/protos/DocAnnotations$Warning;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasOptimalDeviceClassWarning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonDetails()Lcom/google/android/finsky/protos/DocDetails$PersonDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->personDetails:Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPostPurchaseCrossSellSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionPurchaseCrossSell:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->privacyPolicyUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProductDetails()Lcom/google/android/finsky/protos/DocDetails$ProductDetails;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    return-object v0
.end method

.method public getRatingCount()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    iget-wide v0, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->ratingsCount:J

    return-wide v0
.end method

.method public getRatingHistogram()[I
    .locals 5

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    new-array v1, v3, [I

    const/4 v2, 0x0

    iget-wide v3, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fiveStarRatings:J

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->fourStarRatings:J

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->threeStarRatings:J

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->twoStarRatings:J

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->oneStarRatings:J

    long-to-int v3, v3

    aput v3, v1, v2

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getRawDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getRawTranslatedDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->translatedDescriptionHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->browseUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRelatedDocTypeHeader()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRelatedDocTypeListUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelatedDocType:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getRelatedListUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionRelated:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getReleaseType()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->albumDetails:Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->reviewsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->songDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStarRating()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    iget v0, v0, Lcom/google/android/finsky/protos/Rating$AggregateRating;->starRating:F

    return v0
.end method

.method public getSubscriptionDetails()Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->subscriptionDetails:Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscriptionsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v4, v4, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v4, v4, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v2, v3, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    new-instance v4, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v4, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestForRatingSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionSuggestForRating:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->suggestionReasons:Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustedSourcePersonDoc()Lcom/google/android/finsky/api/model/Document;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mTrustedSourceProfileDocument:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;->source:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mTrustedSourceProfileDocument:Lcom/google/android/finsky/api/model/Document;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mTrustedSourceProfileDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvEpisodeDetails:Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTvSeasonDetails()Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->tvSeasonDetails:Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVideoDetails()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;->videoDetails:Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWarningMessage()Ljava/lang/CharSequence;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v5, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v4, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    if-eqz v1, :cond_0

    const-string v5, "<br />"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v5, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/google/android/finsky/protos/DocAnnotations$Warning;->localizedMessage:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method

.method public getWhatsNew()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->recentChangesHtml:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getYouTubeWatchUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->backendUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAntennaInfo()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->seriesAntenna:Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAppSubscriptions()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget v1, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v1, v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBadgeContainer()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->docBadgeContainer:[Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCensoring()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->hasCensoring:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasContainerAnnotation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContainerViews()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->containerView:[Lcom/google/android/finsky/protos/Containers$ContainerView;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasCreatorBadges()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForCreator:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatorRelatedContent()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasDealOfTheDayInfo()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->dealOfTheDay:Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDetails()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->details:Lcom/google/android/finsky/protos/DocDetails$DocumentDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDocumentType()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDocType:Z

    return v0
.end method

.method public hasImages(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getImageTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasItemBadges()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->badgeForDoc:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLinkAnnotation()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->link:Lcom/google/android/finsky/protos/DocAnnotations$Link;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMoreBy()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->sectionMoreBy:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNeutralDismissal()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->neutralDismissal:Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasNextBanner()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->nextBanner:Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptimalDeviceClassWarning()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->optimalDeviceClassWarning:Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPlusOneData()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->plusOneData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasProductDetails()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->productDetails:Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRating()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->aggregateRating:Lcom/google/android/finsky/protos/Rating$AggregateRating;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReleaseType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseType:[I

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasReviewHistogramData()Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRatingHistogram()[I

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    if-lez v1, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public hasSample()Z
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v3, v4, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->offer:[Lcom/google/android/finsky/protos/Common$Offer;

    array-length v2, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v1, v3, v0

    iget v4, v1, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasScreenshots()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    if-eq v1, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSubscriptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->subscription:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideoThumbnails()Z
    .locals 2

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasVideos()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public hasWarningMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->annotations:Lcom/google/android/finsky/protos/DocumentV2$Annotations;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Annotations;->warning:[Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAddToCirclesContainer()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->addToCirclesContainer:Lcom/google/android/finsky/protos/DocumentV2$AddToCirclesContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableIfOwned()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->availability:Lcom/google/android/finsky/protos/FilterRules$Availability;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/FilterRules$Availability;->availableIfOwned:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgressSeason()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvSeasonDetails()Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget v1, v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->docType:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->episodeCount:I

    iget v2, v0, Lcom/google/android/finsky/protos/DocDetails$TvSeasonDetails;->expectedEpisodeCount:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isQuickSuggestCluster()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateAndSuggestContainer:Lcom/google/android/finsky/protos/DocumentV2$RateAndSuggestContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRateContainer()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->rateContainer:Lcom/google/android/finsky/protos/DocumentV2$RateContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrustedSourceContainer()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/protos/DocumentV2$Template;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Template;->trustedSourceContainer:Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$TrustedSourceContainer;->source:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsCheckoutFlow(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iput-object p1, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->descriptionHtml:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDescriptionHtml:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, " v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v2

    iget v2, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
