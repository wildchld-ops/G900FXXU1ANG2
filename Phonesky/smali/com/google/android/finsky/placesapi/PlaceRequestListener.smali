.class public abstract Lcom/google/android/finsky/placesapi/PlaceRequestListener;
.super Ljava/lang/Object;
.source "PlaceRequestListener.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mListener:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    const-string v1, "OK"

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    new-instance v2, Lcom/android/volley/VolleyError;

    const-string v3, "Response status not OK"

    invoke-direct {v2, v3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mListener:Lcom/android/volley/Response$Listener;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->parseFromJson(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlaceRequestListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method protected abstract parseFromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
