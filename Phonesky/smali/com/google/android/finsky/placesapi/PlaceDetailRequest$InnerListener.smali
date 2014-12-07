.class Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;
.super Lcom/google/android/finsky/placesapi/PlaceRequestListener;
.source "PlaceDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/placesapi/PlaceDetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/placesapi/PlaceRequestListener",
        "<",
        "Lcom/google/android/finsky/placesapi/PlaceDetailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mParser:Lcom/google/android/finsky/placesapi/AdrMicroformatParser;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/placesapi/AdrMicroformatParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/placesapi/AdrMicroformatParser;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceDetailResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/placesapi/PlaceRequestListener;-><init>(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;->mParser:Lcom/google/android/finsky/placesapi/AdrMicroformatParser;

    return-void
.end method


# virtual methods
.method protected parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceDetailResponse;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;->mParser:Lcom/google/android/finsky/placesapi/AdrMicroformatParser;

    invoke-static {v0, v1}, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;->parseFromJson(Lorg/json/JSONObject;Lcom/google/android/finsky/placesapi/AdrMicroformatParser;)Lcom/google/android/finsky/placesapi/PlaceDetailResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parseFromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;->parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceDetailResponse;

    move-result-object v0

    return-object v0
.end method
