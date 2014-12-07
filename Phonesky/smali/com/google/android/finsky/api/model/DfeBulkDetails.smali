.class public Lcom/google/android/finsky/api/model/DfeBulkDetails;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeBulkDetails.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mBulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDocids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V
    .locals 1
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

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDocids:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDocids:Ljava/util/List;

    invoke-interface {p1, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method public getDocuments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;->entry:[Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;->entry:[Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;

    aget-object v3, v3, v1

    iget-object v0, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v0, :cond_3

    sget-boolean v3, Lcom/google/android/finsky/utils/DfeLog;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Null document for requested docid: %s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mDocids:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBulkDetails;->mBulkDetailsResponse:Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->onResponse(Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;)V

    return-void
.end method
