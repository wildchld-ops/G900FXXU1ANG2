.class public abstract Lcom/google/android/finsky/api/model/PaginatedList;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "PaginatedList.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mAutoLoadNextPage:Z

.field private mCurrentOffset:I

.field private mCurrentRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mItemsUntilEndCount:I

.field private mLastPositionRequested:I

.field protected mLastResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mMoreAvailable:Z

.field protected mUrlOffsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowDistance:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItemsUntilEndCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    iput-boolean p2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, v2, p3}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    :cond_2
    iget v0, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget-object v0, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private updateItemsUntilEndCount(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItemsUntilEndCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItemsUntilEndCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItemsUntilEndCount:I

    goto :goto_0
.end method


# virtual methods
.method public clearDataAndReplaceInitialUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->resetItems()V

    return-void
.end method

.method public clearTransientState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    return-void
.end method

.method public flushUnusedPages()V
    .locals 3

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TD;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->getItem(IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItem(IZ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TD;"
        }
    .end annotation

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    :cond_0
    const/4 v2, 0x0

    if-gez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t return an item with a negative index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItemsUntilEndCount:I

    sub-int/2addr v4, v5

    if-lt p1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    if-eqz p2, :cond_2

    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    :cond_2
    if-nez v2, :cond_4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget v4, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-gt v4, p1, :cond_3

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    :cond_4
    return-object v2
.end method

.method protected abstract getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation
.end method

.method public getListPageUrls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v3, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected abstract getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isMoreAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    invoke-super {p0, p1}, Lcom/google/android/finsky/api/model/DfeModel;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/finsky/api/model/PaginatedList;->updateItemsUntilEndCount(I)V

    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget-object v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v6, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget v5, v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-ne v6, v5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_5

    iget-boolean v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    iget v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    add-int/2addr v6, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public resetItems()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    return-void
.end method

.method public retryLoadItems()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget v4, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-ne v3, v4, :cond_0

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    :cond_3
    return-void
.end method

.method public setWindowDistance(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    return-void
.end method

.method public startLoadItems()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    :cond_0
    return-void
.end method
