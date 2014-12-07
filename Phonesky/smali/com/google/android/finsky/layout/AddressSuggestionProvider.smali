.class public interface abstract Lcom/google/android/finsky/layout/AddressSuggestionProvider;
.super Ljava/lang/Object;
.source "AddressSuggestionProvider.java"


# virtual methods
.method public abstract getSuggestions(Ljava/lang/CharSequence;)Ljava/util/List;
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
.end method

.method public abstract onSuggestionAccepted(Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;)V
.end method
