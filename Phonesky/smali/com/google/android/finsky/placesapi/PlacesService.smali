.class public Lcom/google/android/finsky/placesapi/PlacesService;
.super Ljava/lang/Object;
.source "PlacesService.java"


# instance fields
.field private final mApiKey:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mParser:Lcom/google/android/finsky/placesapi/AdrMicroformatParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/placesapi/AdrMicroformatParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mApiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mLanguage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mParser:Lcom/google/android/finsky/placesapi/AdrMicroformatParser;

    return-void
.end method

.method private buildRequestUrl(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    const-string v0, "&key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sensor=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "https://maps.googleapis.com"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method buildAutocompleteUrl(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/maps/api/place/autocomplete/json"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?input="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&types=address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&components=country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/config/G;->placesApiBiasRadiusMeters:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/placesapi/PlacesService;->buildRequestUrl(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method buildPlaceDetailsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/maps/api/place/details/json"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?reference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/placesapi/PlacesService;->buildRequestUrl(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createAutocompleteRequest(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/placesapi/PlacesService;->buildAutocompleteUrl(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4, p5}, Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method public createPlaceDetailsRequest(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/placesapi/PlaceDetailRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceDetailResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/google/android/finsky/placesapi/PlaceDetailRequest;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/finsky/placesapi/PlaceDetailRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/placesapi/PlacesService;->buildPlaceDetailsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/placesapi/PlacesService;->mParser:Lcom/google/android/finsky/placesapi/AdrMicroformatParser;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/google/android/finsky/placesapi/PlaceDetailRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/placesapi/AdrMicroformatParser;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method
