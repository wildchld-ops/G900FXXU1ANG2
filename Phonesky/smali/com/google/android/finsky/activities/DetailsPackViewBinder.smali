.class public Lcom/google/android/finsky/activities/DetailsPackViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsPackViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mAllowLoadingState:Z

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mHeader:Ljava/lang/String;

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mMaxItemsCount:I

.field private mMaxItemsPerRow:I

.field private mMoreUrl:Ljava/lang/String;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSubheader:Ljava/lang/String;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    const/16 v0, 0x190

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot attach when no request is held internally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method private prepareAndPopulateContent()V
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v1, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHeader:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mSubheader:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090270

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->populateContent()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHeader:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mSubheader:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setupItemListRequest()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->attachToInternalRequest()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    return-void
.end method

.method private setupView()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mAllowLoadingState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mAllowLoadingState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupItemListRequest()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V

    return-void
.end method

.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mHeader:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mSubheader:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMoreUrl:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    mul-int v0, p8, p7

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    iput-object p9, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800d2

    new-instance v3, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsPackViewBinder;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->setupView()V

    return-void
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected handleEmptyData()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p5, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-void
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->prepareAndPopulateContent()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->detachListeners()V

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected populateContent()V
    .locals 15

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v13, 0x7f0800d2

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v11

    iget v13, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsCount:I

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x1

    iget v13, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    div-int v8, v11, v13

    const/4 v6, 0x0

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->handleEmptyData()V

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mLayout:Landroid/view/View;

    const v13, 0x7f0800d1

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040026

    invoke-virtual {v11, v13, v7, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/BucketRow;

    if-ge v6, v5, :cond_2

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v11, v6}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    move-object v4, v11

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    move-result-object v11

    if-eqz v11, :cond_3

    const v0, 0x7f0400d5

    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mMaxItemsPerRow:I

    if-ge v2, v11, :cond_6

    if-ge v6, v5, :cond_4

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v11, v6}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    move-object v3, v11

    :goto_4
    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v11, v0, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayCardViewBase;

    if-eqz v3, :cond_5

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v13, p0, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1, v3, v11, v13, p0}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_5
    invoke-virtual {v10, v1}, Lcom/google/android/finsky/layout/BucketRow;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    move-object v4, v12

    goto :goto_1

    :cond_3
    const v0, 0x7f040147

    goto :goto_2

    :cond_4
    move-object v3, v12

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayCardViewBase;->clearCardState()V

    goto :goto_5

    :cond_6
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method
