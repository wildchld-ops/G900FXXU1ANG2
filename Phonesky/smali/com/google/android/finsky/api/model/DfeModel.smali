.class public abstract Lcom/google/android/finsky/api/model/DfeModel;
.super Ljava/lang/Object;
.source "DfeModel.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field private mErrorListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/volley/Response$ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/OnDataChangedListener;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addErrorListener(Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .param p1    # Lcom/android/volley/Response$ErrorListener;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected clearErrors()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    return-void
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public inErrorState()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isReady()Z
.end method

.method protected notifyDataSetChanged()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/finsky/api/model/OnDataChangedListener;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/google/android/finsky/api/model/OnDataChangedListener;->onDataChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyErrorOccured(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/volley/Response$ErrorListener;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeModel;->mVolleyError:Lcom/android/volley/VolleyError;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeModel;->notifyErrorOccured(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public final removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/OnDataChangedListener;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .param p1    # Lcom/android/volley/Response$ErrorListener;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterAll()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeModel;->mErrorListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
