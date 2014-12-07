.class public Lcom/google/android/finsky/placesapi/PlaceDetailResponse;
.super Ljava/lang/Object;
.source "PlaceDetailResponse.java"


# instance fields
.field private mAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/protos/BillingAddress$Address;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;->mAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;Lcom/google/android/finsky/placesapi/AdrMicroformatParser;)Lcom/google/android/finsky/placesapi/PlaceDetailResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v4, "adr_address"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;->parse(Ljava/lang/String;)Lcom/google/android/finsky/protos/BillingAddress$Address;
    :try_end_0
    .catch Lcom/google/android/finsky/placesapi/AdrMicroformatParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v4, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;

    invoke-direct {v4, v0}, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;-><init>(Lcom/google/android/finsky/protos/BillingAddress$Address;)V

    return-object v4

    :catch_0
    move-exception v1

    new-instance v3, Lorg/json/JSONException;

    invoke-virtual {v1}, Lcom/google/android/finsky/placesapi/AdrMicroformatParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3
.end method


# virtual methods
.method public getAddress()Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;->mAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    return-object v0
.end method
