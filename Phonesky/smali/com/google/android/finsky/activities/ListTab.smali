.class public final Lcom/google/android/finsky/activities/ListTab;
.super Ljava/lang/Object;
.source "ListTab.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

.field private final mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mIsCurrentlySelected:Z

.field private mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field private final mList:Lcom/google/android/finsky/api/model/DfeList;

.field private mListBoundAlready:Z

.field private mListTabContainer:Landroid/view/ViewGroup;

.field private mListTabWrapper:Landroid/view/ViewGroup;

.field protected final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

.field private final mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

.field private mRestoreBundle:Landroid/os/Bundle;

.field private mShouldDeferDataDisplay:Z

.field private mTabLayoutResourceId:I

.field private final mTitle:Ljava/lang/String;

.field protected final mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Landroid/view/LayoutInflater;Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;IZ)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/api/DfeApi;
    .param p5    # Landroid/view/LayoutInflater;
    .param p6    # Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    .param p7    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p8    # Lcom/google/android/finsky/utils/ClientMutationCache;
    .param p9    # I
    .param p10    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    const/16 v0, 0x198

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p5, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget-object v0, p6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mTitle:Ljava/lang/String;

    iget-object v0, p6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/PlayUtils;->getFeaturedGridColumnCount(Landroid/content/res/Resources;D)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeList;->setWindowDistance(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iput-boolean p10, p0, Lcom/google/android/finsky/activities/ListTab;->mShouldDeferDataDisplay:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    iput-object p7, p0, Lcom/google/android/finsky/activities/ListTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ListTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p4, p0, Lcom/google/android/finsky/activities/ListTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p8, p0, Lcom/google/android/finsky/activities/ListTab;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/activities/ListTab;->createBinder(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V

    return-void
.end method

.method private bindList(Landroid/widget/ListView;)V
    .locals 8
    .param p1    # Landroid/widget/ListView;

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ListTab;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/fragments/BucketedListBinder;->bind(Landroid/view/ViewGroup;ILcom/google/android/finsky/api/model/Bucket;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    :cond_0
    return-void
.end method

.method private createBinder(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v0, Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ListTab;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/BucketedListBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/ClientMutationCache;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/finsky/fragments/BucketedListBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    return-void
.end method

.method private syncViewToState()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/ListTab;->mShouldDeferDataDisplay:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/Bucket;

    move-object v1, v4

    :goto_1
    if-lez v0, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

    if-nez v4, :cond_3

    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mLastKnownBucket:Lcom/google/android/finsky/api/model/Bucket;

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-nez v4, :cond_4

    if-ne v0, v5, :cond_7

    move v2, v5

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->hasRecommendationsTemplate()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f040028

    iput v4, p0, Lcom/google/android/finsky/activities/ListTab;->mTabLayoutResourceId:I

    :goto_3
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/google/android/finsky/activities/ListTab;->mTabLayoutResourceId:I

    iget-object v8, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    if-ne v0, v5, :cond_5

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :cond_5
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget v6, p0, Lcom/google/android/finsky/activities/ListTab;->mTabLayoutResourceId:I

    invoke-virtual {v4, v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode(I)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const v6, 0x7f080075

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/layout/play/PlayListView;->setAnimateChanges(Z)V

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/ListTab;->bindList(Landroid/widget/ListView;)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    move v2, v6

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f040095

    iput v4, p0, Lcom/google/android/finsky/activities/ListTab;->mTabLayoutResourceId:I

    goto :goto_3

    :cond_9
    const v4, 0x7f040025

    iput v4, p0, Lcom/google/android/finsky/activities/ListTab;->mTabLayoutResourceId:I

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    goto/16 :goto_0
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public exitDeferredDataDisplayMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mShouldDeferDataDisplay:Z

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 7
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const v3, 0x7f0801b9

    const v4, 0x7f08016d

    const/4 v6, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->flushUnusedPages()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListBoundAlready:Z

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/finsky/activities/ListTab;->mRestoreBundle:Landroid/os/Bundle;

    return-void
.end method

.method public onRetry()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->resetItems()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ListTab;->syncViewToState()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabContainer:Landroid/view/ViewGroup;

    const v3, 0x7f080075

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ListTab;->mBinder:Lcom/google/android/finsky/fragments/BucketedListBinder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTabSelected(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->startNewImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->setNodeSelected(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mListTabWrapper:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpressions(Landroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/ListTab;->mIsCurrentlySelected:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/ListTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->setNodeSelected(Z)V

    goto :goto_0
.end method
