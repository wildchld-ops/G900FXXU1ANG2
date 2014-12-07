.class public Lcom/google/android/finsky/layout/play/PlayCardHeap;
.super Ljava/lang/Object;
.source "PlayCardHeap.java"


# instance fields
.field private final mHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/layout/PlayCardViewBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardHeap;->mHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCard(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;Landroid/view/LayoutInflater;)Lcom/google/android/play/layout/PlayCardViewBase;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardHeap;->mHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardHeap;->mHeap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayCardViewBase;

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayCardViewBase;

    goto :goto_0
.end method

.method public recycle(Lcom/google/android/finsky/layout/play/PlayCardClusterView;)V
    .locals 8

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->hasCards()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    invoke-virtual {v2, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$ClusterTileMetadata;->getCardMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;

    move-result-object v1

    if-eqz v0, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-static {v4}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata$CardMetadata;->getLayoutId()I

    move-result v3

    iget-object v7, p0, Lcom/google/android/finsky/layout/play/PlayCardHeap;->mHeap:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->removeAllCards()V

    goto :goto_0
.end method
