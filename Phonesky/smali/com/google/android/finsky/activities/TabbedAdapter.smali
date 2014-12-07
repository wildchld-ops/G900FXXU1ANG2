.class public Lcom/google/android/finsky/activities/TabbedAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/TabbedAdapter$1;,
        Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;,
        Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
    }
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field private final mContentListData:Lcom/google/android/finsky/api/model/DfeList;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private final mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mNonListTabCount:I

.field private final mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mPromoData:Lcom/google/android/finsky/api/model/DfeList;

.field mTabDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/TabbedAdapter$TabType;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabSelectionTracker:Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

.field private final mTabTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeList;Lcom/google/android/finsky/api/model/DfeList;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;-><init>(Lcom/google/android/finsky/activities/TabbedAdapter$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabSelectionTracker:Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p5, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iput-object p7, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p8, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    iput-object p9, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    iput-object p10, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    iput p11, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    iput-object p13, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-direct {p0, p12, v0}, Lcom/google/android/finsky/activities/TabbedAdapter;->generateTabList(Landroid/os/Bundle;Lcom/google/android/finsky/api/model/DfeList;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->generateQuickLinks()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->showQuickLinksIfNoListsExist()V

    return-void
.end method

.method private generateQuickLinks()V
    .locals 13

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeBrowse;->getQuickLinkList()[Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v8

    if-eqz v8, :cond_0

    array-length v11, v8

    if-lez v11, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    new-instance v11, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget v12, v5, Lcom/google/android/finsky/protos/Browse$QuickLink;->backendId:I

    invoke-direct {v11, v5, v12}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;-><init>(Lcom/google/android/finsky/protos/Browse$QuickLink;I)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v11, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v7, v2, v9}, Lcom/google/android/finsky/adapters/QuickLinkHelper;->getQuickLinksForStream(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget v11, v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    if-nez v11, :cond_2

    move-object v1, v10

    goto :goto_1

    :cond_2
    iget v11, v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    move-object v6, v10

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_6

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iput-object v11, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    :cond_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iput-object v11, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    :cond_5
    :goto_2
    return-void

    :cond_6
    if-eqz v1, :cond_5

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iput-object v11, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    goto :goto_2
.end method

.method private generateTabList(Landroid/os/Bundle;Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->restoreScrollPositions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->restoreDfeLists(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v9, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    new-instance v11, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/16 v12, 0x191

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v11, v9, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v4, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    const/4 v11, 0x1

    invoke-direct {v4, v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    new-instance v12, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/16 v13, 0x192

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v11

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v12, v13, v11, v14, v15}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v12, v4, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNonListTabCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v11

    if-ge v3, v11, :cond_2

    new-instance v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    const/4 v11, 0x2

    invoke-direct {v2, v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    new-instance v12, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/16 v13, 0x193

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v11

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v12, v13, v11, v14, v15}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v12, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_4

    const/4 v5, 0x1

    :goto_1
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_5

    const/4 v6, 0x1

    :goto_2
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget v11, v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    if-nez v11, :cond_6

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    iget v11, v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/DfeList;

    iput-object v11, v10, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    :cond_7
    if-eqz v6, :cond_3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    # setter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v10, v11}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$102(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    :cond_8
    return-void
.end method

.method private static getCategoryNameForBackend(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const v0, 0x7f09022d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f09022c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDfeListForListTab(I)Lcom/google/android/finsky/api/model/DfeList;
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "browse"

    const-string v4, "list"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v2, v3, v1, v5}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getDfeLists()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v3, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTabInstanceStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v3, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v3}, Lcom/google/android/finsky/activities/ViewPagerTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    # getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$100(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTitles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/TabbedAdapter;->getCategoryNameForBackend(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mPromoData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContentListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private restoreDfeLists(Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "TabbedAdapter.TabDfeListParcels"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TabbedAdapter.TabDfeListParcels"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private restoreScrollPositions(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "TabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private showQuickLinksIfNoListsExist()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeBrowse;->getQuickLinkList()[Lcom/google/android/finsky/protos/Browse$QuickLink;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    new-instance v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;-><init>(I)V

    array-length v4, v3

    new-array v2, v4, [Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    new-instance v4, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    aget-object v5, v3, v1

    iget v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-direct {v4, v5, v6}, Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;-><init>(Lcom/google/android/finsky/protos/Browse$QuickLink;I)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    new-instance v4, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/16 v5, 0x191

    iget-object v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v4, v5, v7, v7, v6}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v4, v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-static {v5, v6}, Lcom/google/android/finsky/activities/TabbedAdapter;->getCategoryNameForBackend(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/activities/ViewPagerTab;

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->flushUnusedPages()V

    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    :cond_0
    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    # setter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$102(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->onDestroy()V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageWidth(I)F
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget v0, v0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 18

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabSelectionTracker:Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->shouldDeferListTabDataDisplay()Z

    move-result v17

    iget v2, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iput-object v1, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-interface {v1, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v17, :cond_0

    instance-of v2, v1, Lcom/google/android/finsky/activities/ListTab;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabSelectionTracker:Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

    move-object v2, v1

    check-cast v2, Lcom/google/android/finsky/activities/ListTab;

    # invokes: Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->addDeferredTab(Lcom/google/android/finsky/activities/ListTab;)V
    invoke-static {v3, v2}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->access$200(Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;Lcom/google/android/finsky/activities/ListTab;)V

    :cond_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/google/android/finsky/activities/CategoryTab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/finsky/activities/CategoryTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/LayoutInflater;Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    # getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$100(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeBrowse:Lcom/google/android/finsky/api/model/DfeBrowse;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->buildPromoList(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    :cond_1
    new-instance v1, Lcom/google/android/finsky/activities/ListTab;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    move/from16 v16, v0

    move-object v7, v1

    move-object v13, v6

    invoke-direct/range {v7 .. v17}, Lcom/google/android/finsky/activities/ListTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Landroid/view/LayoutInflater;Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;IZ)V

    # getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$100(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNonListTabCount:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/finsky/activities/TabbedAdapter;->getDfeListForListTab(I)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabListData:Lcom/google/android/finsky/api/model/DfeList;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabTitles:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v6, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mTitle:Ljava/lang/String;

    :cond_3
    new-instance v1, Lcom/google/android/finsky/activities/ListTab;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    move/from16 v16, v0

    move-object v7, v1

    move-object v13, v6

    invoke-direct/range {v7 .. v17}, Lcom/google/android/finsky/activities/ListTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Landroid/view/LayoutInflater;Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;IZ)V

    # getter for: Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->access$100(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Lcom/google/android/finsky/activities/ViewPagerTab;

    iget v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mBackendId:I

    invoke-interface {p2, v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageAboutToBeSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabSelectionTracker:Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

    # invokes: Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->onPageIsAboutToBeSelected(I)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->access$300(Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabSelectionTracker:Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;

    # invokes: Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->onPageScrollStateChanged(I)V
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->access$400(Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v1, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/google/android/finsky/activities/ViewPagerTab;->setTabSelected(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TabbedAdapter.TabParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getTabInstanceStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "TabbedAdapter.TabDfeListParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter;->getDfeLists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
