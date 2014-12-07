.class public Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "PlaceAutocompleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest$InnerListener;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest$InnerListener;

    invoke-direct {v1, p2, p3}, Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest$InnerListener;-><init>(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
