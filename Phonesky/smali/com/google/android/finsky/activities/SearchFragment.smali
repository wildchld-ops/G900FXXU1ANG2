.class public Lcom/google/android/finsky/activities/SearchFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

.field private mBackendId:I

.field private mListView:Landroid/widget/ListView;

.field private mQuery:Ljava/lang/String;

.field private mRetriedSearch:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

.field private mSearchUrl:Ljava/lang/String;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mRetriedSearch:Z

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SearchFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SearchFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/SearchFragment;)Lcom/google/android/finsky/adapters/CardListAdapter;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SearchFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/SearchFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/SearchFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/activities/SearchFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SearchFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SearchFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    const-string v1, "finsky.PageFragment.SearchFragment.query"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "finsky.PageFragment.SearchFragment.searchUrl"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private recordState()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "SearchFragment.KeySearchData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "SearchFragment.KeyBackendId"

    iget v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040025

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "SearchFragment.KeyBackendId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "SearchFragment.KeyBackendId"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-interface {v2, v4}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080075

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v4, 0x7f080195

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090139

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    :goto_0
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "SearchFragment.KeySearchData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "SearchFragment.KeySearchData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/DfeSearch;

    iput-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/DfeSearch;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindActionBar()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->switchToLoading()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->requestData()V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindAdapter()V

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.searchUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SearchFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDataChanged()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeSearch;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mRetriedSearch:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getNoSearchResultsMessageId(I)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v3, v2, v4}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mRetriedSearch:Z

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v4, "SearchFragment.KeySentLogEvent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->requestData()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090139

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindAdapter()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindActionBar()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SearchFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->onDestroy()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->clearTransientState()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    :cond_2
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SearchFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public rebindActionBar()V
    .locals 11

    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v4

    iput v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    iget v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v5, "pub:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902c3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v8, "pub:"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v4, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    check-cast v4, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateSearchQuery(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-interface {v4, v5}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const v3, 0x7f0902be

    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const v3, 0x7f0902bd

    goto :goto_2
.end method

.method public rebindAdapter()V
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    const-string v0, "List view null, ignoring."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/finsky/adapters/SearchAdapter;->hasRestoreData(Landroid/os/Bundle;)Z

    move-result v8

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getServerLogsCookie()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v10

    :goto_1
    new-instance v9, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v0, 0x198

    invoke-direct {v9, v0, v10, v1, p0}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/SearchFragment;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/SearchAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/DfeSearch;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/finsky/activities/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/SearchFragment$1;-><init>(Lcom/google/android/finsky/activities/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    move-object v10, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mAdapter:Lcom/google/android/finsky/adapters/CardListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    goto :goto_2
.end method

.method protected rebindViews()V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->clearTransientState()V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    :cond_0
    return-void
.end method

.method protected requestData()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "SearchFragment.KeySentLogEvent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreSearchEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;->query:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;->hasQuery:Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;->queryUrl:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;->hasQueryUrl:Z

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSearchEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreSearchEvent;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "SearchFragment.KeySentLogEvent"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->startLoadItems()V

    return-void
.end method
