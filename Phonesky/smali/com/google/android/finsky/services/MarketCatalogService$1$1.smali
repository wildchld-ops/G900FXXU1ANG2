.class Lcom/google/android/finsky/services/MarketCatalogService$1$1;
.super Ljava/lang/Object;
.source "MarketCatalogService.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/MarketCatalogService$1;->isBackendEnabled(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/MarketCatalogService$1;

.field final synthetic val$backendId:I

.field final synthetic val$enabled:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/MarketCatalogService$1;I[ZLjava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->this$1:Lcom/google/android/finsky/services/MarketCatalogService$1;

    iput p2, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$backendId:I

    iput-object p3, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$enabled:[Z

    iput-object p4, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/protos/Toc$TocResponse;

    iget-object v0, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->corpus:[Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget v4, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$backendId:I

    iget v5, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$enabled:[Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/services/MarketCatalogService$1$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
