.class public Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterView;
.source "PlayCardRateClusterView.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayCardDismissListener;


# instance fields
.field private mEmptyDone:Landroid/view/View;

.field private mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

.field private mRejectTouchEvents:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mRejectTouchEvents:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->fadeOutCard(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->startSlideTransition(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->onSlideTransitionCompleted(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;)Lcom/google/android/finsky/adapters/OnCollapsedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    return-object v0
.end method

.method private fadeOutCard(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$2;-><init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static isClusterDismissed(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 5

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/utils/ClientMutationCache;->isDismissedRecommendation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/utils/ClientMutationCache;->getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private onSlideTransitionCompleted(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->syncIndexMapping()V

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->hasItemsToRate()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mClusterDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/utils/ClientMutationCache;->dismissRecommendation(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->transitionToEmptyState(Z)V

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mRejectTouchEvents:Z

    return-void

    :cond_0
    invoke-virtual {p1, v5}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->clearRating()V

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getCardChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->tileIndexToDocumentIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3, v2, v1, p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->bindCardAt(IILcom/google/android/finsky/layout/play/PlayCardDismissListener;)V

    goto :goto_0
.end method

.method private startSlideTransition(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildIndex(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getCardChildCount()I

    move-result v8

    new-array v9, v8, [I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_0

    invoke-virtual {p0, v10}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayCardViewBase;->getLeft()I

    move-result v1

    aput v1, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;

    int-to-float v4, v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$3;-><init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;FFFFIII[I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$4;-><init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private transitionToEmptyState(Z)V
    .locals 7

    const-wide/16 v5, 0xfa

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$5;-><init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->createContent(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayCardHeap;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getCardChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;

    invoke-direct {v0, p0, v8}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setRateListener(Lcom/google/android/finsky/layout/play/PlayCardViewRate$RateListener;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewRate;->setState(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    check-cast v9, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterViewContent;->hasItemsToRate()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->transitionToEmptyState(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mRejectTouchEvents:Z

    return-void
.end method

.method public enableCollapseAnimation(Lcom/google/android/finsky/adapters/OnCollapsedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mOnCollapsedListener:Lcom/google/android/finsky/adapters/OnCollapsedListener;

    return-void
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x19c

    return v0
.end method

.method public limitDocumentsToTileCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismissDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/ClientMutationCache;->dismissRecommendation(Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/finsky/layout/play/PlayCardViewRate;

    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->fadeOutCard(Lcom/google/android/finsky/layout/play/PlayCardViewRate;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->onFinishInflate()V

    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mRejectTouchEvents:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v6, v3, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->layout(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    add-int v5, v3, v0

    invoke-virtual {v4, v6, v3, v2, v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->layout(IIII)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v6, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->measure(II)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mHeader:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->measure(II)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mEmptyDone:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardRateClusterView;->setMeasuredDimension(II)V

    return-void
.end method
