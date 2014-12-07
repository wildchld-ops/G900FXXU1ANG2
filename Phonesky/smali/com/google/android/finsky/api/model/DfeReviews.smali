.class public Lcom/google/android/finsky/api/model/DfeReviews;
.super Lcom/google/android/finsky/api/model/PaginatedList;
.source "DfeReviews.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/PaginatedList",
        "<",
        "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
        "Lcom/google/android/finsky/protos/DocumentV2$Review;",
        ">;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mFilterByDevice:Z

.field private mFilterByVersion:Z

.field private mRating:I

.field private mSortType:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p4}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    iput v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mRating:I

    iput p3, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mVersionCode:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    return-void
.end method


# virtual methods
.method public currentlyFilteringByVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    return v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/protos/Rev$ReviewResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/DocumentV2$Review;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;->getResponse:Lcom/google/android/finsky/protos/Rev$GetReviewsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Rev$GetReviewsResponse;->review:[Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItemsFromResponse(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;->nextPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/google/android/finsky/protos/Rev$ReviewResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getNextPageUrl(Lcom/google/android/finsky/protos/Rev$ReviewResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingFilter()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mRating:I

    return v0
.end method

.method public getSortType()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    return v0
.end method

.method public getVersionFilter()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mVersionCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mVersionCode:I

    :goto_0
    iget v4, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mRating:I

    iget v5, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    move-object v1, p1

    move-object v6, p0

    move-object v7, p0

    invoke-interface/range {v0 .. v7}, Lcom/google/android/finsky/api/DfeApi;->getReviews(Ljava/lang/String;ZIIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public refetchReviews()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->resetItems()V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    return-void
.end method

.method public setFilters(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    iput-boolean p2, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    return-void
.end method

.method public setSortType(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    return-void
.end method

.method public shouldFilterByDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    return v0
.end method
