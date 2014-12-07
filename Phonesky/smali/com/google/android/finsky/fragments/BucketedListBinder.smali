.class public Lcom/google/android/finsky/fragments/BucketedListBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "BucketedListBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<*>;>;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

.field private final mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mHasLoadedAtLeastOnce:Z

.field private mListView:Lcom/google/android/finsky/layout/play/PlayListView;

.field protected mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/ClientMutationCache;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    return-void
.end method

.method private detachFromData()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getAdapterForBucketType(Lcom/google/android/finsky/api/model/Bucket;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Lcom/google/android/finsky/adapters/FinskyListAdapter;
    .locals 14
    .param p1    # Lcom/google/android/finsky/api/model/Bucket;
    .param p2    # [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Landroid/os/Bundle;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v13, 0x1

    :goto_0
    if-eqz v13, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/finsky/api/model/BucketedList;

    move-object v5, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/BucketedList;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const/4 v10, 0x1

    :goto_2
    new-instance v0, Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v7, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/finsky/api/model/BucketedList;

    if-eqz v13, :cond_3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->hasRecommendationsTemplate()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lcom/google/android/finsky/adapters/CardListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ZZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    goto :goto_3
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;ILcom/google/android/finsky/api/model/Bucket;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/api/model/Bucket;
    .param p4    # [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;
    .param p5    # Ljava/lang/String;
    .param p6    # Landroid/os/Bundle;
    .param p7    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f080075

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayListView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setAnimateChanges(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setItemsCanFocus(Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/layout/play/PlayListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/fragments/BucketedListBinder;->configureEmptyUi(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onDestroy()V

    :cond_3
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p2

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/fragments/BucketedListBinder;->getAdapterForBucketType(Lcom/google/android/finsky/api/model/Bucket;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Lcom/google/android/finsky/adapters/FinskyListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setEmptyView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v0, v1, p6}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onRestoreInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected configureEmptyUi(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    return-void
.end method

.method public onDataChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setEmptyView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->detachFromData()V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onDestroy()V

    iput-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->triggerFooterErrorMode()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/widget/ListView;
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/FinskyListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->detachFromData()V

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/ViewBinder;->setData(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    return-void
.end method
