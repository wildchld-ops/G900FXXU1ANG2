.class public Lcom/google/android/finsky/adapters/AggregatedAdapter;
.super Landroid/widget/BaseAdapter;
.source "AggregatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/AggregatedAdapter$1;,
        Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mAdapters:[Landroid/widget/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mCachedAllItemsEnabled:Z

.field private mCachedCount:I

.field private mCachedHasStableIds:Z

.field private mCachedTranslations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/widget/BaseAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedCount:I

    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    iput-object p1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    return-void
.end method

.method private declared-synchronized refreshCachedData()V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    array-length v3, v7

    const/4 v5, 0x0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    new-instance v7, Ljava/util/ArrayList;

    mul-int/lit8 v10, v3, 0x3

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedTranslations:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    aget-object v0, v7, v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v5, v1

    iget-boolean v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    if-eqz v7, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    iget-boolean v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    if-eqz v7, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_2

    new-instance v6, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v7}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;-><init>(Landroid/widget/ListAdapter;ILcom/google/android/finsky/adapters/AggregatedAdapter$1;)V

    iget-object v7, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedTranslations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_0
    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput v5, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private translate(I)Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedTranslations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedAllItemsEnabled:Z

    return v0
.end method

.method public dumpState()V
    .locals 10

    const/4 v9, 0x0

    const-string v7, "****** AGGREGATED ADAPTER START ******"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Total items: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getCount()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [ "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Index translation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItemViewType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "****** AGGREGATED ADAPTER  END  ******"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAdapters()[Landroid/widget/BaseAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mAdapters:[Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->translate(I)Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$000(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->translate(I)Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$000(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->translate(I)Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$000(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->translate(I)Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$000(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedHasStableIds:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter;->mCachedCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->translate(I)Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->access$000(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->refreshCachedData()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->refreshCachedData()V

    return-void
.end method
