.class Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest$InnerListener;
.super Lcom/google/android/finsky/placesapi/PlaceRequestListener;
.source "PlaceAutocompleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/placesapi/PlaceRequestListener",
        "<",
        "Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p2    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/placesapi/PlaceRequestListener;-><init>(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;->parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;

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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest$InnerListener;->parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;

    move-result-object v0

    return-object v0
.end method
