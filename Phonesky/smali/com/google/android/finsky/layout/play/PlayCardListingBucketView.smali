.class public Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;
.super Lcom/google/android/finsky/layout/IdentifiableLinearLayout;
.source "PlayCardListingBucketView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mColumnCount:I

.field protected mContent:Landroid/widget/LinearLayout;

.field protected mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mRowCount:I

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x190

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method private bindBucketEntries(Ljava/util/List;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mRowCount:I

    if-ge v6, v8, :cond_3

    iget-object v8, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->getDisplayedRowsForBucket(I)I

    move-result v8

    if-lt v6, v8, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->getDisplayedColumnsForBucket(II)I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    if-ge v2, v8, :cond_0

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayCardViewBase;

    if-ge v2, v3, :cond_2

    iget v8, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    mul-int/2addr v8, v6

    add-int v4, v8, v2

    invoke-static {v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v1, v0, p2, p3, p0}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {v1, v9}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private bindBucketHeader(IILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09026f

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    const/4 v3, 0x0

    move v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getDisplayedColumnsForBucket(II)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->getDisplayedRowsForBucket(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    mul-int/2addr v0, p2

    sub-int v0, p1, v0

    iget v1, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getDisplayedRowsForBucket(I)I
    .locals 4

    int-to-double v0, p1

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mRowCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p5, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->bindBucketEntries(Ljava/util/List;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getEstimatedResults()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->bindBucketHeader(IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bind(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p6, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->bindBucketEntries(Ljava/util/List;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->estimatedResults:J

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p5}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->bindBucketHeader(IILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public inflateGrid(II)V
    .locals 8

    const/4 v7, 0x0

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mRowCount:I

    iput p2, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mRowCount:I

    if-ge v4, v5, :cond_1

    const v5, 0x7f040026

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mColumnCount:I

    if-ge v0, v5, :cond_0

    const v5, 0x7f0400db

    invoke-virtual {v1, v5, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableLinearLayout;->onFinishInflate()V

    const v0, 0x7f0801c6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mContent:Landroid/widget/LinearLayout;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardListingBucketView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    return-void
.end method
