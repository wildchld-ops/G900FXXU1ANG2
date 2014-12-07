.class public Lcom/google/android/finsky/adapters/CardListAdapter;
.super Lcom/google/android/finsky/adapters/FinskyListAdapter;
.source "CardListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
.implements Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mCardHeap:Lcom/google/android/finsky/layout/play/PlayCardHeap;

.field private final mCardInset:I

.field private final mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field private final mColumnCount:I

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mHasBannerHeader:Z

.field private mHasFilters:Z

.field private final mHasPlainHeader:Z

.field private final mIsOrdered:Z

.field public mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooseDocsWithReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooseItemCellId:I

.field private final mLooseItemColCount:I

.field private final mNumQuickLinkRows:I

.field private final mNumQuickLinksPerRow:I

.field private mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

.field protected final mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

.field private final mShowLooseItemReasons:Z

.field private final mTitle:Ljava/lang/String;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mUseMiniCards:Z

.field private final mUseMiniCardsForLooseItems:Z

.field private final mUseTallTemplates:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ZZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/utils/ClientMutationCache;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;[",
            "Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p7}, Lcom/google/android/finsky/adapters/FinskyListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/BucketedList;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object p2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mTitle:Ljava/lang/String;

    const-wide/high16 v5, 0x3ff0000000000000L

    invoke-static {v3, v5, v6}, Lcom/google/android/finsky/utils/PlayUtils;->getFeaturedGridColumnCount(Landroid/content/res/Resources;D)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    new-instance v5, Lcom/google/android/finsky/layout/play/PlayCardHeap;

    invoke-direct {v5}, Lcom/google/android/finsky/layout/play/PlayCardHeap;-><init>()V

    iput-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardHeap:Lcom/google/android/finsky/layout/play/PlayCardHeap;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const v5, 0x7f0b005c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-le v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseTallTemplates:Z

    const v5, 0x7f0a0009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseMiniCards:Z

    if-eqz p8, :cond_3

    array-length v2, p8

    :goto_1
    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lcom/google/android/finsky/utils/PlayUtils;->getStreamQuickLinkColumnCount(Landroid/content/res/Resources;II)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinksPerRow:I

    iput-object p8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinksPerRow:I

    invoke-static {v2, v5}, Lcom/google/android/finsky/utils/IntMath;->ceil(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinkRows:I

    const v5, 0x7f0b000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardInset:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Bucket;->isOrdered()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mIsOrdered:Z

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->hasContainerViews()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasFilters:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mShowLooseItemReasons:Z

    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseMiniCards:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mShowLooseItemReasons:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mIsOrdered:Z

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_5
    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseMiniCardsForLooseItems:Z

    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mShowLooseItemReasons:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_8

    const v5, 0x7f0400e2

    :goto_6
    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemCellId:I

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    :goto_7
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseDocsWithReasons:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasBannerHeader:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasPlainHeader:Z

    :goto_8
    if-nez p10, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->syncItemEntries()V

    :cond_0
    sget-boolean v5, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/adapters/CardListAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/adapters/CardListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/CardListAdapter;)V

    iput-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const v5, 0x7f0400ee

    goto :goto_6

    :cond_9
    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseMiniCardsForLooseItems:Z

    if-eqz v5, :cond_a

    const v5, 0x7f0400df

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemCellId:I

    const/high16 v5, 0x7f0d0000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    goto :goto_7

    :cond_a
    const v5, 0x7f0400db

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemCellId:I

    invoke-static {v3}, Lcom/google/android/finsky/utils/PlayUtils;->getRegularGridColumnCount(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasBannerHeader:Z

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mTitle:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    :goto_9
    iput-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasPlainHeader:Z

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    goto :goto_9
.end method

.method private bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V
    .locals 20

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p4, :cond_1

    invoke-direct/range {p0 .. p2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getMoreResultsStringForCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->showHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->limitDocumentsToTileCount()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_1
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move/from16 v19, v17

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getPlayCardDismissListener()Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardHeap:Lcom/google/android/finsky/layout/play/PlayCardHeap;

    move-object/from16 v16, v0

    move-object/from16 v11, p3

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method private bindLooseItem(Lcom/google/android/finsky/api/model/Document;ILandroid/view/View;Z)V
    .locals 10

    move-object v0, p3

    check-cast v0, Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-static {v0}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    if-nez p1, :cond_2

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->bindLoading()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->clearCardState()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->isDismissed(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v4

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getPlayCardDismissListener()Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v8, 0x1

    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mIsOrdered:Z

    if-eqz v1, :cond_3

    move v9, p2

    :goto_1
    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;ZI)V

    goto :goto_0

    :cond_3
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private endLastEntry(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;",
            ">;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z
    invoke-static {v1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$000(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p2, -0x1

    # setter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I
    invoke-static {v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$102(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;I)I

    :cond_0
    return-void
.end method

.method private getBannerHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const v8, 0x7f040030

    invoke-virtual {p0, v8, p2, v10}, Lcom/google/android/finsky/adapters/CardListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v8, 0x7f080090

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v8, 0x7f080091

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Bucket;->getContainerWithBannerTemplate()Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v8, v7, Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;->colorThemeArgb:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;->colorThemeArgb:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v8

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v1, v10, v6, v2}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v9, Lcom/google/android/finsky/adapters/CardListAdapter$2;

    invoke-direct {v9, p0, v4}, Lcom/google/android/finsky/adapters/CardListAdapter$2;-><init>(Lcom/google/android/finsky/adapters/CardListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v3, v9, v6, v2}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-object p1
.end method

.method private getBaseCount()I
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getNumPrependedRows()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getCardListAdapterViewType(I)I
    .locals 10

    const/16 v7, 0xe

    const/4 v8, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v3

    sget-object v9, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v3, v9, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getBaseCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_2

    sget-object v7, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-ne v3, v7, :cond_0

    :goto_0
    return v5

    :cond_0
    sget-object v7, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-ne v3, v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    const-string v7, "Unexpected footer mode: %d"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v7, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinkRows:I

    if-ge p1, v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinkRows:I

    sub-int/2addr p1, v5

    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasBannerHeader:Z

    if-eqz v5, :cond_5

    if-nez p1, :cond_4

    move v5, v7

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, -0x1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->isShowingPlainHeader()Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez p1, :cond_6

    const/4 v5, 0x7

    goto :goto_0

    :cond_6
    add-int/lit8 p1, p1, -0x1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->hasFilters()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez p1, :cond_8

    const/16 v5, 0x8

    goto :goto_0

    :cond_8
    add-int/lit8 p1, p1, -0x1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    if-nez v2, :cond_a

    move v5, v8

    goto :goto_0

    :cond_a
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->hasNextBanner()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x3

    goto :goto_0

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x5

    goto :goto_0

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->isRateContainer()Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0xc

    goto :goto_0

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->isQuickSuggestCluster()Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v5, 0xd

    goto :goto_0

    :cond_e
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->isAddToCirclesContainer()Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v5, 0xa

    goto :goto_0

    :cond_f
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->isTrustedSourceContainer()Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v5, 0xb

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_11
    invoke-virtual {v2, v7}, Lcom/google/android/finsky/api/model/Document;->hasImages(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->ordered:Z

    if-eqz v5, :cond_13

    const/16 v5, 0x9

    goto/16 :goto_0

    :cond_13
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/adapters/CardListAdapter;->getSignalStrengthForCluster(Lcom/google/android/finsky/api/model/Document;)I

    move-result v0

    add-int/lit8 v5, v0, 0xf

    goto/16 :goto_0

    :cond_14
    move v5, v8

    goto/16 :goto_0
.end method

.method private getContainerFilterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const v2, 0x7f0400d2

    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/finsky/adapters/CardListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v2, 0x7f0801c4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f0801c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/finsky/layout/play/Identifiable;

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindSpinnerData(Lcom/google/android/finsky/layout/play/Identifiable;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    return-object p1
.end method

.method private getGenericCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    move-object v1, p2

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/adapters/CardListAdapter;->getGenericClusterMetadata(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {p0, v3, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400d7

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    move-object v1, v5

    goto :goto_1
.end method

.method private getGenericClusterMetadata(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    if-lez v3, :cond_0

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getSignalStrengthForCluster(Lcom/google/android/finsky/api/model/Document;)I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseMiniCards:Z

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Lcom/google/android/finsky/layout/play/PlayCardMiniClusterRepository;->getMetadata(II)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    iget-boolean v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseTallTemplates:Z

    invoke-static {v0, v5, v6, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getMetadata(IIZI)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v5

    goto :goto_1
.end method

.method private getLooseItemRow(IILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mShowLooseItemReasons:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/adapters/CardListAdapter;->getRowOfLooseItemsWithReasons(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/adapters/CardListAdapter;->getRowOfLooseItemsWithoutReasons(IILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getMerchBanner(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->resetUiElementNode()V

    :goto_0
    iget v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->init(I)V

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getNextBannerInfo()Lcom/google/android/finsky/protos/DocumentV2$NextBanner;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v7, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v4, v7, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;->configureMerch(Lcom/google/android/finsky/protos/DocumentV2$NextBanner;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;[B)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400f3

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayMerchBannerView;

    goto :goto_0
.end method

.method private getMerchCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;

    move-object v1, p2

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/adapters/CardListAdapter;->getMerchClusterMetadata(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {p0, v3, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v1, v7, v6, v5, v2}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->configureMerch(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400de

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;

    move-object v1, v5

    goto :goto_1
.end method

.method private getMerchClusterMetadata(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseTallTemplates:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterRepository;->getMetadata(IIZ)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    goto :goto_0
.end method

.method private getMoreResultsStringForCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;)Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    const v9, 0x7f090270

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v7, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-wide v1, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    cmp-long v7, v1, v10

    if-lez v7, :cond_3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v7

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    sub-long v5, v1, v7

    cmp-long v7, v5, v10

    if-gtz v7, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-wide/16 v7, 0x63

    cmp-long v7, v5, v7

    if-gtz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f09026f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getOrderedCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    const v3, 0x7f0400d3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p3, v4}, Lcom/google/android/finsky/adapters/CardListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v3, 0x7f0d000d

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v8}, Lcom/google/android/finsky/utils/PlayUtils;->getRegularGridColumnCount(Landroid/content/res/Resources;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->inflateGrid(II)V

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->setIdentifier(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v3

    if-ge v7, v3, :cond_1

    invoke-virtual {v1, v7}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->bind(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-object v0
.end method

.method private getPersonCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    move-object v1, p2

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    invoke-static {v5}, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->getMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {p0, v3, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400d7

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    move-object v1, v5

    goto :goto_1
.end method

.method private getPersonFollowCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;

    move-object v1, p2

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    iget-boolean v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseTallTemplates:Z

    invoke-static {v5, v6}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterRepository;->getMetadata(IZ)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v4

    invoke-virtual {p0, v3, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTrustedSourcePersonDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;->configurePersonProfile(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V

    return-object v1

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400e3

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;

    move-object v1, v5

    goto :goto_1
.end method

.method private getPlainHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const v1, 0x7f0400d8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mTitle:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plain_header:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setIdentifier(Ljava/lang/String;)V

    return-object p1
.end method

.method private getQuickSuggestionsCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, p2

    :goto_1
    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->enableCollapseAnimation(Lcom/google/android/finsky/adapters/OnCollapsedListener;)V

    :cond_0
    invoke-virtual {v2, v4}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    iget-boolean v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseTallTemplates:Z

    invoke-static {v4, v5, v6}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterRepository;->getMetadata(IIZ)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400e7

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private getRateCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    move-object v1, p2

    :goto_1
    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->enableCollapseAnimation(Lcom/google/android/finsky/adapters/OnCollapsedListener;)V

    :cond_0
    iget v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    invoke-static {v4}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterRepository;->getMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindCluster(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/layout/play/PlayCardClusterView;Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400e9

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method private getRowOfLooseItemsWithReasons(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-eqz p3, :cond_2

    const/4 v9, 0x1

    :goto_0
    if-eqz v9, :cond_3

    check-cast p3, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    move-object/from16 v1, p3

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseDocsWithReasons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v12, 0x0

    move/from16 v13, p1

    :goto_2
    move/from16 v0, p2

    if-gt v13, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3, v13}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/api/model/Document;

    if-eqz v10, :cond_1

    if-nez v12, :cond_0

    move-object v12, v10

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseDocsWithReasons:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400d7

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    move-object v1, v3

    goto :goto_1

    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v11

    :goto_3
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setIdentifier(Ljava/lang/String;)V

    const/16 v3, 0x1c

    if-ne v11, v3, :cond_7

    const/4 v14, 0x1

    :goto_5
    if-eqz v14, :cond_8

    iget v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    invoke-static {v3}, Lcom/google/android/finsky/layout/play/PlayCardPersonClusterRepository;->getMetadata(I)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    :goto_6
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseDocsWithReasons:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getPlayCardDismissListener()Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardHeap:Lcom/google/android/finsky/layout/play/PlayCardHeap;

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->hideHeader()V

    return-object v1

    :cond_5
    const/4 v11, -0x1

    goto :goto_3

    :cond_6
    const-string v3, ""

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    iget v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    iget-boolean v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mUseTallTemplates:Z

    const/4 v5, 0x0

    invoke-static {v11, v3, v4, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterRepository;->getMetadata(IIZI)Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v2

    goto :goto_6
.end method

.method private getRowOfLooseItemsWithoutReasons(IILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 17

    if-nez p3, :cond_0

    const v13, 0x7f040026

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v13, v1, v14}, Lcom/google/android/finsky/adapters/CardListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    if-ge v3, v13, :cond_0

    move-object/from16 v13, p3

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemCellId:I

    move-object/from16 v14, p3

    check-cast v14, Landroid/view/ViewGroup;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v14, v1}, Lcom/google/android/finsky/adapters/CardListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    check-cast v2, Lcom/google/android/finsky/layout/BucketRow;

    if-nez p5, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardInset:I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, p5

    if-ne v0, v13, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardInset:I

    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-ne v10, v5, :cond_1

    if-eq v9, v4, :cond_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    invoke-virtual {v2, v13, v10, v14, v9}, Lcom/google/android/finsky/layout/BucketRow;->setPadding(IIII)V

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    if-ge v8, v13, :cond_8

    add-int v12, p1, v8

    move/from16 v0, p2

    if-le v12, v0, :cond_6

    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_7

    const/4 v6, 0x0

    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-virtual {v2, v8}, Lcom/google/android/finsky/layout/BucketRow;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v13, v11}, Lcom/google/android/finsky/adapters/CardListAdapter;->bindLooseItem(Lcom/google/android/finsky/api/model/Document;ILandroid/view/View;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v13, v12}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/finsky/api/model/Document;

    move-object v6, v13

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v7}, Lcom/google/android/finsky/layout/BucketRow;->setIdentifier(Ljava/lang/String;)V

    return-object p3
.end method

.method private getSingleDocCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-eqz p2, :cond_0

    const/4 v11, 0x1

    :goto_0
    if-eqz v11, :cond_1

    check-cast p2, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;

    move-object/from16 v1, p2

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getRawDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/api/model/Document;->setDescription(Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/finsky/adapters/CardListAdapter$3;

    invoke-direct {v13, p0, v3}, Lcom/google/android/finsky/adapters/CardListAdapter$3;-><init>(Lcom/google/android/finsky/adapters/CardListAdapter;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    iget v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    invoke-static {v5, v6}, Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterRepository;->getMetadata(II)Lcom/google/android/finsky/layout/play/PlayCardSingleCardClusterMetadata;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    invoke-static {v5}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v14

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mColumnCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v1, v6, v7, v5, v13}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->configureMerch(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardHeap:Lcom/google/android/finsky/layout/play/PlayCardHeap;

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V

    invoke-virtual {v12}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, v1

    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->showHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400de

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v5, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;

    move-object v1, v5

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->configureNoMerch()V

    goto :goto_2
.end method

.method public static hasRestoreData(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "CardListAdapter.itemEntriesList"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowingPlainHeader()Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasPlainHeader:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasPlainHeader:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->shouldHidePlainHeaderDuringInitialLoading()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v0, v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->shouldHidePlainHeaderOnEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v0, v3, :cond_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private syncItemEntries()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v5

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I
    invoke-static {v6}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$100(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    :cond_0
    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_9

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v6, v2, v10}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_2

    const-string v6, "Loaded null doc, forcing a hard reload of list data."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/BucketedList;->resetItems()V

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/BucketedList;->startLoadItems()V

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasNextBanner()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->isRateContainer()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->isQuickSuggestCluster()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->isAddToCirclesContainer()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->endLastEntry(Ljava/util/List;I)V

    sget-boolean v6, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->isRateContainer()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-static {v6, v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->isClusterDismissed(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->isQuickSuggestCluster()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-static {v6, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterView;->isClusterDismissed(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_6
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    invoke-direct {v7, v2, v2, v10, v11}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;-><init>(IIZLcom/google/android/finsky/adapters/CardListAdapter$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z
    invoke-static {v1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$000(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)Z

    move-result v6

    if-eqz v6, :cond_8

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v1}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v6

    sub-int v6, v2, v6

    iget v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    if-ge v6, v7, :cond_8

    const/4 v4, 0x1

    :cond_8
    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->endLastEntry(Ljava/util/List;I)V

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v7, v2, v8, v9, v11}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;-><init>(IIZLcom/google/android/finsky/adapters/CardListAdapter$1;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-lez v5, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/adapters/CardListAdapter;->endLastEntry(Ljava/util/List;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected bindSpinnerData(Lcom/google/android/finsky/layout/play/Identifiable;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/finsky/layout/play/Identifiable;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusSpinnerDrawable(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getContainerViews()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/google/android/finsky/adapters/ContainerViewSpinnerAdapter;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/finsky/adapters/ContainerViewSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/protos/Containers$ContainerView;

    iget-boolean v3, v3, Lcom/google/android/finsky/protos/Containers$ContainerView;->selected:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    new-instance v3, Lcom/google/android/finsky/adapters/CardListAdapter$4;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/finsky/adapters/CardListAdapter$4;-><init>(Lcom/google/android/finsky/adapters/CardListAdapter;Landroid/widget/Spinner;Ljava/util/List;)V

    invoke-virtual {p2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-static {p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->hasClickListener(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getBaseCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCardListAdapterViewType(I)I

    move-result v0

    return v0
.end method

.method public getNumPrependedRows()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinkRows:I

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->isShowingPlainHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->hasFilters()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected getPlayCardDismissListener()Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .locals 0

    return-object p0
.end method

.method public getSignalStrengthForCluster(Lcom/google/android/finsky/api/model/Document;)I
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v6

    if-ge v6, v5, :cond_1

    const-string v5, "Not enough children in cluster."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1, v4}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v3

    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCardListAdapterViewType(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getNumPrependedRows()I

    move-result v3

    sub-int v13, p1, v3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_0

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    :cond_0
    packed-switch v16, :pswitch_data_0

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getGenericCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    :goto_0
    return-object v15

    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object v3, v15

    check-cast v3, Lcom/google/android/finsky/layout/play/Identifiable;

    const-string v4, "error_footer"

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/play/Identifiable;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lcom/google/android/finsky/layout/play/Identifiable;

    const-string v4, "loading_footer"

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/play/Identifiable;->setIdentifier(Ljava/lang/String;)V

    move-object/from16 v15, v17

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v7, p2

    check-cast v7, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mNumQuickLinksPerRow:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object/from16 v8, p3

    move/from16 v10, p1

    invoke-static/range {v3 .. v12}, Lcom/google/android/finsky/adapters/QuickLinkHelper;->getQuickLinksRow(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/ViewGroup;Landroid/view/ViewGroup;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lcom/google/android/finsky/layout/play/Identifiable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quick_link_row:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/play/Identifiable;->setIdentifier(Ljava/lang/String;)V

    move-object/from16 v15, v18

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getPlainHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getBannerHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_5
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getMerchBanner(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getContainerFilterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_7
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v4

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$100(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v5

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/finsky/adapters/CardListAdapter;->getLooseItemRow(IILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_8
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getMerchCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_9
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getPersonCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_a
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getPersonFollowCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_b
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getSingleDocCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_c
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getOrderedCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_d
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getRateCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_e
    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static {v14}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->getQuickSuggestionsCluster(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected hasFilters()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mHasFilters:Z

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isDismissed(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/finsky/utils/PlayUtils;->isDismissable(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/ClientMutationCache;->isDismissedRecommendation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "CardListAdapter only supports single-bucket lists."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->syncItemEntries()V

    invoke-super {p0}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onDataChanged()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onDismissDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/ClientMutationCache;->dismissRecommendation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090347

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2

    instance-of v1, p1, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->resetUiElementNode()V

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mCardHeap:Lcom/google/android/finsky/layout/play/PlayCardHeap;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardHeap;->recycle(Lcom/google/android/finsky/layout/play/PlayCardClusterView;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const-string v5, "CardListAdapter.itemEntriesList"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->syncItemEntries()V

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/BucketedList;->startLoadItems()V

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onRestoreInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string v5, "CardListAdapter.firstVisibleRow"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "CardListAdapter.rowPixelOffset"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "CardListAdapter.columnCount"

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v5, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_3

    :cond_2
    iput-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    move v1, v0

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1, v1, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/google/android/finsky/adapters/CardListAdapter;->restoreDespiteColumnCountChange(Landroid/widget/ListView;Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->onSaveInstanceState(Landroid/widget/ListView;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_1
    const-string v3, "CardListAdapter.firstVisibleRow"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CardListAdapter.rowPixelOffset"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CardListAdapter.columnCount"

    iget v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "CardListAdapter.itemEntriesList"

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method public onWishlistStatusChanged(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public restoreDespiteColumnCountChange(Landroid/widget/ListView;Ljava/util/ArrayList;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;",
            ">;II)V"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$000(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)Z

    move-result v19

    if-eqz v19, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int v18, p4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/IntMath;->ceil(II)I

    move-result v14

    sub-int v15, p3, v13

    add-int v12, v15, v14

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$000(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)Z

    move-result v19

    if-eqz v19, :cond_4

    move v7, v4

    const/16 v17, 0x0

    move v5, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mIsLooseItemRow:Z
    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$000(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)Z

    move-result v19

    if-eqz v19, :cond_2

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$100(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v20

    sub-int v19, v19, v20

    add-int v17, v17, v19

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntMath;->ceil(II)I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueStartIndex:I
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$200(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    # getter for: Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->mTrueEndIndex:I
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;->access$100(Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;)I

    move-result v6

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    move/from16 v19, v0

    add-int v19, v19, v3

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v19, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v3, v8, v1, v2}, Lcom/google/android/finsky/adapters/CardListAdapter$ItemEntry;-><init>(IIZLcom/google/android/finsky/adapters/CardListAdapter$1;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mLooseItemColCount:I

    move/from16 v19, v0

    add-int v3, v3, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    move v4, v7

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method protected shouldHidePlainHeaderDuringInitialLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldHidePlainHeaderOnEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/finsky/adapters/FinskyListAdapter;->updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->syncItemEntries()V

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->notifyDataSetChanged()V

    return-void
.end method
