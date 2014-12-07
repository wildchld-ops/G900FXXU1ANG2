.class public abstract Lcom/google/android/finsky/api/model/BucketedList;
.super Lcom/google/android/finsky/api/model/PaginatedList;
.source "BucketedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/PaginatedList",
        "<TT;",
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBuckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;IZ)V
    .locals 1
    .param p2    # I
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/util/List;IZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBackendId()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId(I)I

    move-result v0

    return v0
.end method

.method public getBackendId(I)I
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_0

    :cond_2
    move v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move p1, v0

    goto :goto_0
.end method

.method public getBucketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Bucket;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    return-object v0
.end method
