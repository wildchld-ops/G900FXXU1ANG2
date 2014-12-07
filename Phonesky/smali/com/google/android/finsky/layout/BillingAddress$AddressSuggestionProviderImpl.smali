.class Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;
.super Ljava/lang/Object;
.source "BillingAddress.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/layout/AddressSuggestionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/BillingAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressSuggestionProviderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/placesapi/PlaceDetailResponse;",
        ">;",
        "Lcom/google/android/finsky/layout/AddressSuggestionProvider;"
    }
.end annotation


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field private mPlacesService:Lcom/google/android/finsky/placesapi/PlacesService;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field final synthetic this$0:Lcom/google/android/finsky/layout/BillingAddress;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/BillingAddress;Lcom/google/android/finsky/placesapi/PlacesService;Lcom/android/volley/RequestQueue;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mPlacesService:Lcom/google/android/finsky/placesapi/PlacesService;

    iput-object p3, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object p4, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public getSuggestions(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mCountry:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mPlacesService:Lcom/google/android/finsky/placesapi/PlacesService;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mCountry:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/placesapi/PlacesService;->createAutocompleteRequest(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/placesapi/PlaceAutocompleteRequest;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :try_start_0
    invoke-virtual {v4}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/placesapi/PlaceAutocompleteResponse;->getPredictions()Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v0, v9

    goto :goto_0

    :cond_0
    move-object v0, v9

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;
    invoke-static {v0}, Lcom/google/android/finsky/layout/BillingAddress;->access$300(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/android/i18n/addressinput/AddressWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->hideUpperRightProgressBar()V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/placesapi/PlaceDetailResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;
    invoke-static {v0}, Lcom/google/android/finsky/layout/BillingAddress;->access$300(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/android/i18n/addressinput/AddressWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->hideUpperRightProgressBar()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;
    invoke-static {v0}, Lcom/google/android/finsky/layout/BillingAddress;->access$300(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/android/i18n/addressinput/AddressWidget;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;->getAddress()Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils;->addressDataFromInstrumentAddress(Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->setAddressFromSuggestion(Lcom/android/i18n/addressinput/AddressData;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/placesapi/PlaceDetailResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->onResponse(Lcom/google/android/finsky/placesapi/PlaceDetailResponse;)V

    return-void
.end method

.method public onSuggestionAccepted(Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mPlacesService:Lcom/google/android/finsky/placesapi/PlacesService;

    invoke-virtual {p1}, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p0}, Lcom/google/android/finsky/placesapi/PlacesService;->createPlaceDetailsRequest(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/finsky/placesapi/PlaceDetailRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    # getter for: Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;
    invoke-static {v0}, Lcom/google/android/finsky/layout/BillingAddress;->access$300(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/android/i18n/addressinput/AddressWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->showUpperRightProgressBar()V

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->mCountry:Ljava/lang/String;

    return-void
.end method
