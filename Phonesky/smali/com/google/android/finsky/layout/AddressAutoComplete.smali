.class public Lcom/google/android/finsky/layout/AddressAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "AddressAutoComplete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AddressAutoComplete$1;,
        Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;,
        Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

.field private mBlockNextSuggestion:Z

.field private mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/AddressAutoComplete;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mBlockNextSuggestion:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/layout/AddressAutoComplete;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mBlockNextSuggestion:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/AddressAutoComplete;)Lcom/google/android/finsky/layout/AddressSuggestionProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/AddressAutoComplete;)Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blockNextSuggestion()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mBlockNextSuggestion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    new-instance v0, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040007

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;-><init>(Lcom/google/android/finsky/layout/AddressAutoComplete;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    # getter for: Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->access$000(Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/AddressSuggestionProvider;->onSuggestionAccepted(Lcom/google/android/finsky/placesapi/PlaceAutocompletePrediction;)V

    :cond_0
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setSuggestionProvider(Lcom/google/android/finsky/layout/AddressSuggestionProvider;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
