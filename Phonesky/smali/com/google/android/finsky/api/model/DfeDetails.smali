.class public Lcom/google/android/finsky/api/model/DfeDetails;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeDetails.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Details$DetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

.field private final mDetailsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsUrl:Ljava/lang/String;

    invoke-interface {p1, v0, p3, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Details$DetailsResponse;->docV2:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    goto :goto_0
.end method

.method public getFooterHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->footerHtml:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->serverLogsCookie:[B

    goto :goto_0
.end method

.method public getUserReview()Lcom/google/android/finsky/protos/DocumentV2$Review;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/Details$DetailsResponse;->userReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Details$DetailsResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeDetails;->mDetailsResponse:Lcom/google/android/finsky/protos/Details$DetailsResponse;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeDetails;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Details$DetailsResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeDetails;->onResponse(Lcom/google/android/finsky/protos/Details$DetailsResponse;)V

    return-void
.end method
