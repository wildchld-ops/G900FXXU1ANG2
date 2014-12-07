.class Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;
.super Landroid/widget/Filter;
.source "AddressAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AddressAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlacesFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/AddressAutoComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/AddressAutoComplete;Lcom/google/android/finsky/layout/AddressAutoComplete$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;-><init>(Lcom/google/android/finsky/layout/AddressAutoComplete;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    # getter for: Lcom/google/android/finsky/layout/AddressAutoComplete;->mBlockNextSuggestion:Z
    invoke-static {v4}, Lcom/google/android/finsky/layout/AddressAutoComplete;->access$200(Lcom/google/android/finsky/layout/AddressAutoComplete;)Z

    move-result v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    # getter for: Lcom/google/android/finsky/layout/AddressAutoComplete;->mSuggestionProvider:Lcom/google/android/finsky/layout/AddressSuggestionProvider;
    invoke-static {v4}, Lcom/google/android/finsky/layout/AddressAutoComplete;->access$300(Lcom/google/android/finsky/layout/AddressAutoComplete;)Lcom/google/android/finsky/layout/AddressSuggestionProvider;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    const/4 v6, 0x0

    # setter for: Lcom/google/android/finsky/layout/AddressAutoComplete;->mBlockNextSuggestion:Z
    invoke-static {v4, v6}, Lcom/google/android/finsky/layout/AddressAutoComplete;->access$202(Lcom/google/android/finsky/layout/AddressAutoComplete;Z)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-interface {v2, p1}, Lcom/google/android/finsky/layout/AddressSuggestionProvider;->getSuggestions(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Landroid/widget/Filter$FilterResults;->count:I

    :cond_0
    return-object v1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    # getter for: Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->access$400(Lcom/google/android/finsky/layout/AddressAutoComplete;)Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    move-result-object v1

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # setter for: Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->mPredictions:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->access$002(Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    # getter for: Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->access$400(Lcom/google/android/finsky/layout/AddressAutoComplete;)Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressAutoComplete$PlacesFilter;->this$0:Lcom/google/android/finsky/layout/AddressAutoComplete;

    # getter for: Lcom/google/android/finsky/layout/AddressAutoComplete;->mAdapter:Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete;->access$400(Lcom/google/android/finsky/layout/AddressAutoComplete;)Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddressAutoComplete$Adapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
