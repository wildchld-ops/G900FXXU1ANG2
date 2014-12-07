.class public Lcom/google/android/finsky/activities/TabbedBrowseFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "TabbedBrowseFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mBackendId:I

.field private mBreadcrumb:Ljava/lang/String;

.field mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field mContentListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

.field private mRestoreSelectedPanel:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

.field mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

.field private mTabbedAdapterBundle:Landroid/os/Bundle;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    return-void
.end method

.method private clearState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    :cond_4
    return-void
.end method

.method private getBreadcrumbText()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeBrowse;->getBreadcrumbList()[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    move-result-object v1

    array-length v2, v1

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/TabbedAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    iget-object v0, v4, Lcom/google/android/finsky/protos/Browse$BrowseLink;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    iget v5, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f090111

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;-><init>()V

    if-ltz p2, :cond_0

    iput p2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, p3, p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    return-object v0
.end method

.method private recordState()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.Breadcrumb"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BackendId"

    iget v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.ListData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.PromoData"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.CurrentTab"

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method private restoreFromBundle(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.BrowseData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeBrowse;

    iput-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.ListData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.ListData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.PromoData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.PromoData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapterBundle:Landroid/os/Bundle;

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.Breadcrumb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.Breadcrumb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.BackendId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.BackendId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.CurrentTab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "TabbedBrowseFragment.CurrentTab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->onDataChanged()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToLoading()V

    :cond_6
    return-void

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040135

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "TabbedBrowseFragment.BrowseData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->restoreFromBundle(Z)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToLoading()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->requestData()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindActionBar()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildContentList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iget v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->getBackendId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_3
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->recordState()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->clearState()V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v0, p1}, Lcom/google/android/play/layout/PlayTabContainer;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/play/layout/PlayTabContainer;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageSelected(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1, p1}, Lcom/google/android/play/layout/PlayTabContainer;->onPageSelected(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayTabContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f09036e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    return-void
.end method

.method public rebindViews()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->switchToData()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08018d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/google/android/finsky/activities/TabbedAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mPromoListData:Lcom/google/android/finsky/api/model/DfeList;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapterBundle:Landroid/os/Bundle;

    move-object/from16 v14, p0

    invoke-direct/range {v1 .. v14}, Lcom/google/android/finsky/activities/TabbedAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeList;Lcom/google/android/finsky/api/model/DfeList;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v16, 0x0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0801e2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayTabContainer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    new-instance v2, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment$1;-><init>(Lcom/google/android/finsky/activities/TabbedBrowseFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->setPagePreSelectionListener(Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBackendId:I

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/play/layout/PlayTabContainer;->setSelectedIndicatorColor(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mRestoreSelectedPanel:I

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->onPageScrolled(IFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/TabbedAdapter;

    invoke-virtual {v1, v15}, Lcom/google/android/finsky/activities/TabbedAdapter;->onPageSelected(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBreadcrumb:Ljava/lang/String;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindActionBar()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mTabContainer:Lcom/google/android/play/layout/PlayTabContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayTabContainer;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_4
.end method

.method public refresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->rebindViews()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->clearState()V

    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->mBrowseData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
