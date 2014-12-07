.class public Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
.source "PlayCardQuickSuggestionsClusterViewContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent$PendingStateHandler;
    }
.end annotation


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->mState:I

    return-void
.end method

.method private refreshCards()V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->getCardChildCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->mMetadata:Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getTileCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->getData()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->bindLoading()V

    :cond_4
    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent$PendingStateHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent$PendingStateHandler;->exitPendingStateIfNecessary()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayCardHeap;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-super/range {p0 .. p6}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->refreshCards()V

    return-void
.end method

.method protected getNumberOfTilesToBind()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getNumberOfTilesToBind()I

    move-result v0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->mState:I

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent;->refreshCards()V

    return-void
.end method
