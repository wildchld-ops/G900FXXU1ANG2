.class public Lcom/google/android/finsky/adapters/CardSimpleListAdapter;
.super Lcom/google/android/finsky/adapters/FinskyListAdapter;
.source "CardSimpleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/CardSimpleListAdapter$3;
    }
.end annotation


# instance fields
.field protected mCellLayoutId:I

.field protected mColumnCount:I

.field private final mHeaderImageMaxHeight:I

.field protected final mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected final mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mRowCount:I

.field private mSingleBucketNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mSmallestWidth:I

.field private final mTitle:Ljava/lang/String;

.field protected final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p6    # Ljava/lang/String;
    .param p7    # I
    .param p8    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/finsky/adapters/FinskyListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/BucketedList;)V

    iput-object p3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p4, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p6, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/PlayUtils;->getRegularGridColumnCount(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mColumnCount:I

    iput p7, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mRowCount:I

    iput-object p8, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const v1, 0x7f0400db

    iput v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mCellLayoutId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mHeaderImageMaxHeight:I

    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mSmallestWidth:I

    return-void
.end method

.method private bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/View;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/api/model/Bucket;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # I
    .param p4    # Landroid/view/View;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    check-cast v0, Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-static {v0}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->bindLoading()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->clearCardState()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->isOrdered()Z

    move-result v1

    if-eqz v1, :cond_2

    move v9, p3

    :goto_1
    move-object v1, p2

    move-object v6, v5

    move-object v7, p5

    move v8, v4

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;ZI)V

    goto :goto_0

    :cond_2
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private getBannerHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-nez p1, :cond_0

    const v6, 0x7f040030

    invoke-virtual {p0, v6, p2, v9}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v6, 0x7f080090

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f080091

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Bucket;->getContainerWithBannerTemplate()Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v6, v5, Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;->colorThemeArgb:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/google/android/finsky/protos/DocumentV2$ContainerWithBanner;->colorThemeArgb:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mSmallestWidth:I

    iget v8, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mHeaderImageMaxHeight:I

    invoke-static {v6, v1, v9, v7, v8}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v7, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/CardSimpleListAdapter;Landroid/widget/ImageView;)V

    iget v8, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mSmallestWidth:I

    iget v9, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mHeaderImageMaxHeight:I

    invoke-virtual {v6, v2, v7, v8, v9}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-object p1
.end method

.method private getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    if-nez p2, :cond_0

    invoke-direct {p0, v1, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->inflateViewForBucket(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->bind(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-object p2
.end method

.method private getBucketedListCount()I
    .locals 5

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mColumnCount:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->hasBannerHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->hasPlainHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    goto :goto_0
.end method

.method private getBucketedListItemViewType(I)I
    .locals 5
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBucketedListCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    if-ne p1, v0, :cond_1

    sget-object v3, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$3;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v1, 0x2

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v1, :cond_3

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->hasBannerHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->hasPlainHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const v0, 0x7f040026

    invoke-virtual {p0, v0, p3, v2}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/google/android/finsky/layout/BucketRow;

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->configureBucketRow(Lcom/google/android/finsky/layout/BucketRow;)V

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mColumnCount:I

    if-ge v7, v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mCellLayoutId:I

    invoke-virtual {p0, v0, v6, v2}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/layout/BucketRow;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mSingleBucketNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v2, 0x190

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v0, v2, v4, v5, v8}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mSingleBucketNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mColumnCount:I

    if-ge v7, v0, :cond_2

    iget v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mColumnCount:I

    mul-int/2addr v0, p1

    add-int v3, v0, v7

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mSingleBucketNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/View;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method private getPaginatedRowIndex(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->hasBannerHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->hasPlainHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    sub-int v1, p1, v0

    return v1
.end method

.method private getPlainHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const v1, 0x7f0400d8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mTitle:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private hasBannerHeader()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private hasPlainHeader()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateViewForBucket(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/Bucket;
    .param p2    # Landroid/view/ViewGroup;

    const v1, 0x7f0400d3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;

    iget v1, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mRowCount:I

    iget v2, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mColumnCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->inflateGrid(II)V

    return-object v0
.end method


# virtual methods
.method protected configureBucketRow(Lcom/google/android/finsky/layout/BucketRow;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/BucketRow;

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBucketedListCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBucketedListItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBannerHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getPlainHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getPaginatedRowIndex(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Bucket;
    .param p2    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/adapters/CardSimpleListAdapter$2;-><init>(Lcom/google/android/finsky/adapters/CardSimpleListAdapter;Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method
