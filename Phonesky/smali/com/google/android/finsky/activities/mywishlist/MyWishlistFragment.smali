.class public Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyWishlistFragment.java"

# interfaces
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

.field private mBreadcrumb:Ljava/lang/String;

.field private mDfeList:Lcom/google/android/finsky/api/model/DfeList;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mMyWishlistListView:Landroid/widget/ListView;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method private getLibraryList()Lcom/google/android/finsky/api/model/DfeList;
    .locals 6

    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    const-string v3, "u-wl"

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x0

    const-string v4, "u-wl"

    const/4 v5, 0x7

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/google/android/finsky/api/DfeApi;->getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public static newInstance()Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    return-object v0
.end method

.method private rebindAdapter()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    const-string v0, "List view null, ignoring."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v0, v9}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v6

    new-instance v0, Lcom/google/android/finsky/adapters/MyWishlistAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/MyWishlistAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyWishlistFragment.KeyListParcel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "MyWishlistFragment.KeyListParcel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    goto :goto_1
.end method

.method private recordState()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyWishlistFragment.KeyListParcel"

    iget-object v2, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected clearDfeList()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    :cond_0
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040146

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0902f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBreadcrumb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindActionBar()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->switchToLoading()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->requestData()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindAdapter()V

    goto :goto_0
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->rebindAdapter()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->clearDfeList()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->recordState()V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mMyWishlistListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->onDestroy()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    :cond_0
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->requestData()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStart()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onStop()V

    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    return-void
.end method

.method protected rebindViews()V
    .locals 0

    return-void
.end method

.method protected requestData()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->clearDfeList()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->getLibraryList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->mDfeList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    return-void
.end method
