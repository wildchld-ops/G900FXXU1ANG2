.class public Lcom/google/android/finsky/layout/play/PlayCardClusterView;
.super Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;
.source "PlayCardClusterView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field protected mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field protected mClusterDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

.field protected mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mParentOfChildren:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private final mVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentOfChildren:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mVerticalPadding:I

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayCardHeap;

    invoke-virtual {p5, p0}, Lcom/google/android/finsky/layout/play/PlayCardHeap;->recycle(Lcom/google/android/finsky/layout/play/PlayCardClusterView;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentOfChildren:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected getCardChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildCount()I

    move-result v0

    return v0
.end method

.method public getMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x190

    return v0
.end method

.method public hasCards()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getCardChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideHeader()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setVisibility(I)V

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setPadding(IIII)V

    return-void
.end method

.method public limitDocumentsToTileCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v5, v2, v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->layout(IIII)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v5, v2, v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getPaddingBottom()I

    move-result v4

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v3, p1, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->measure(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3, p1, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->measure(II)V

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllCards()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->removeAllCards()V

    return-void
.end method

.method public resetUiElementNode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentOfChildren:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Lcom/google/android/finsky/utils/ClientMutationCache;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/utils/ClientMutationCache;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mClusterDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v1, p1, p3, p4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->setMetadata(Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;Ljava/util/List;Lcom/google/android/finsky/utils/ClientMutationCache;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mClusterDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->getPlayStoreUiElementType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {v1, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object p5, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentOfChildren:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mClusterDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-object p5, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mParentOfChildren:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    goto :goto_1
.end method

.method public showHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/view/View$OnClickListener;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setVisibility(I)V

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mVerticalPadding:I

    iget v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->mVerticalPadding:I

    invoke-virtual {p0, v6, v0, v6, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->setPadding(IIII)V

    return-void
.end method
