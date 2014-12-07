.class public Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "MultiDfeBulkDetails.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mLastVolleyError:Lcom/android/volley/VolleyError;

.field protected mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/DfeBulkDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-direct {v0, p1, p2}, Lcom/google/android/finsky/api/model/DfeBulkDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected clearErrors()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected collateResponses()V
    .locals 0

    return-void
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inErrorState()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isReady()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onDataChanged()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mRequests:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->inErrorState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->collateResponses()V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mLastVolleyError:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->notifyErrorOccured(Lcom/android/volley/VolleyError;)V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/MultiDfeBulkDetails;->mLastVolleyError:Lcom/android/volley/VolleyError;

    :cond_0
    return-void
.end method
