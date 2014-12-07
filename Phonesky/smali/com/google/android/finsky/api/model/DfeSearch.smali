.class public Lcom/google/android/finsky/api/model/DfeSearch;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeSearch.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/protos/Search$SearchResponse;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/DfeSearch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mInitialUrl:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mSuggestedQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/api/model/DfeSearch$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeSearch$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeSearch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mInitialUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/util/List;IZ)V

    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mQuery:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v0, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mInitialUrl:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeSearch$1;)V
    .locals 0
    .param p1    # Ljava/util/List;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/api/model/DfeSearch$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackendId()I
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Non-hierarchical uri: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v2, "c"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v2}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    invoke-super {p0}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v2

    goto :goto_0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/protos/Search$SearchResponse;)Ljava/util/List;
    .locals 11
    .param p1    # Lcom/google/android/finsky/protos/Search$SearchResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/Search$SearchResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p1, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v7}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    new-instance v9, Lcom/google/android/finsky/api/model/Bucket;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v9, v7}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v0, v7, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v6, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    new-instance v7, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v7, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {v8, v1}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v7, p1, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p1, Lcom/google/android/finsky/protos/Search$SearchResponse;->suggestedQuery:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mSuggestedQuery:Ljava/lang/String;

    :cond_2
    return-object v5
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/Search$SearchResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch;->getItemsFromResponse(Lcom/google/android/finsky/protos/Search$SearchResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/protos/Search$SearchResponse;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/google/android/finsky/protos/Search$SearchResponse;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/google/android/finsky/protos/Search$SearchResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    iget-object v2, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->containerMetadata:Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    iget-object v1, v2, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->nextPageUrl:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/Search$SearchResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch;->getNextPageUrl(Lcom/google/android/finsky/protos/Search$SearchResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedSearches()[Lcom/google/android/finsky/protos/Search$RelatedSearch;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/protos/Search$SearchResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Search$SearchResponse;->relatedSearch:[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    return-object v0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/protos/Search$SearchResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/protos/Search$SearchResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Search$SearchResponse;->serverLogsCookie:[B

    goto :goto_0
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mSuggestedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mInitialUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAggregateResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/protos/Search$SearchResponse;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/Search$SearchResponse;->aggregateQuery:Z

    return v0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->search(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/DfeApi;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
