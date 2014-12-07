.class public Lcom/google/android/finsky/placesapi/PlaceDetailRequest;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "PlaceDetailRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/placesapi/AdrMicroformatParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/placesapi/AdrMicroformatParser;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceDetailResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;

    invoke-direct {v1, p2, p3, p4}, Lcom/google/android/finsky/placesapi/PlaceDetailRequest$InnerListener;-><init>(Lcom/google/android/finsky/placesapi/AdrMicroformatParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
