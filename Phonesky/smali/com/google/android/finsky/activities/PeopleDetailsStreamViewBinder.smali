.class public Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "PeopleDetailsStreamViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field private mDfeList:Lcom/google/android/finsky/api/model/DfeList;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mListView:Lcom/google/android/finsky/layout/play/PlayListView;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->requestData()V

    return-void
.end method

.method private getStreamList()Lcom/google/android/finsky/api/model/DfeList;
    .locals 4

    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private rebindAdapter()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    if-nez v0, :cond_1

    const-string v0, "List view null, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->hasRestoreData(Landroid/os/Bundle;)Z

    move-result v9

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v7, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v8, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v10, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;-><init>(Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/DfeList;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->onRestoreInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    goto :goto_0
.end method

.method private requestData()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->clearDfeList()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->getStreamList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0801ba

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, v2}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/finsky/layout/LayoutSwitcher;

    new-instance v3, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder$1;-><init>(Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;)V

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/play/PlayListView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/play/PlayListView;->setAnimateChanges(Z)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/layout/play/PlayListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getPersonDetails()Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/google/android/finsky/protos/DocDetails$PersonDetails;->personIsRequester:Z

    if-eqz v2, :cond_3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {v2}, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->invalidateMyPeoplePageListCache(Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->clearDfeList()V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->requestData()V

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->rebindAdapter()V

    goto :goto_1
.end method

.method protected clearDfeList()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iput-object p4, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p5, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p6, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iput-object p7, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->rebindAdapter()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/PlayListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->onDestroyView()V

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->onDestroy()V

    iput-object v3, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getPersonDetails()Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/google/android/finsky/protos/DocDetails$PersonDetails;->personIsRequester:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getListPageUrls()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->setPeoplePageListUrls(Ljava/util/List;)V

    :cond_2
    iput-object v3, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->mListView:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
