.class public Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;
.super Ljava/lang/Object;
.source "PlaceAutocompletePrediction.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mReference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->mDescription:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->mReference:Ljava/lang/String;

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reference"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->mReference:Ljava/lang/String;

    return-object v0
.end method
