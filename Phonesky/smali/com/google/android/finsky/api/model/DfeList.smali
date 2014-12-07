.class public Lcom/google/android/finsky/api/model/DfeList;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/protos/DocList$ListResponse;",
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
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mFilteredDocId:Ljava/lang/String;

.field private mInitialListUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/api/model/DfeList$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeList$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;IZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v0, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;IZLjava/lang/String;Lcom/google/android/finsky/api/model/DfeList$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Ljava/util/List;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearDataAndReplaceInitialUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/google/android/finsky/api/model/BucketedList;->clearDataAndReplaceInitialUrl(Ljava/lang/String;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public filterDocId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    return-void
.end method

.method public getInitialUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mInitialListUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/protos/DocList$ListResponse;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/DocList$ListResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p1, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget-object v8, p1, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    const/4 v9, 0x0

    aget-object v7, v8, v9

    iget-object v0, v7, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->child:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v6, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v2, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v9, Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {v9, v7}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v5

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v6, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v1, v0, v3

    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v9, Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {v9, v1}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItemsFromResponse(Lcom/google/android/finsky/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/protos/DocList$ListResponse;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/google/android/finsky/protos/DocList$ListResponse;->doc:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

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

    check-cast p1, Lcom/google/android/finsky/protos/DocList$ListResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getNextPageUrl(Lcom/google/android/finsky/protos/DocList$ListResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mAutoLoadNextPage:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
