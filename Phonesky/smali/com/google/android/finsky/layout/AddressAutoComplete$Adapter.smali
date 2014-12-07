.class Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "AddressAutoComplete.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AddressAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mPredictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/AddressAutoComplete;Landroid/content/Context;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
    .param p1    # Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 3

    new-instance v0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;-><init>(Lcom/google/android/finsky/layout/AddressAutoComplete;Lcom/google/android/finsky/layout/AddressAutoComplete$1;)V

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;

    invoke-virtual {v0}, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
