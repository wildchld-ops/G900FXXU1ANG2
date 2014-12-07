.class public Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;
.super Ljava/lang/Object;
.source "PlaceAutocompleteResponse.java"


# instance fields
.field private final mPredictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;->mPredictions:Ljava/util/List;

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v3, "predictions"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;

    invoke-direct {v3, v2}, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;-><init>(Ljava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public getPredictions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;->mPredictions:Ljava/util/List;

    return-object v0
.end method
