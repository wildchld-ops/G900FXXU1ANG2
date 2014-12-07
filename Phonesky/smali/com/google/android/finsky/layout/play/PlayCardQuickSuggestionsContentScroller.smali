.class public Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;
.super Landroid/widget/HorizontalScrollView;
.source "PlayCardQuickSuggestionsContentScroller.java"


# instance fields
.field private mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

.field private final mHideFirstCardHandler:Landroid/os/Handler;

.field private mShouldHideFirstCard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mHideFirstCardHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;)Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    return-object v0
.end method


# virtual methods
.method public hideRateCard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mShouldHideFirstCard:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->requestLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->layout(IIII)V

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mShouldHideFirstCard:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mShouldHideFirstCard:Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mHideFirstCardHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMetadata()Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardContentPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardContentPaddingRight()I

    move-result v6

    add-int v4, v5, v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    sub-int v0, v5, v4

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getViewportWidth()I

    move-result v5

    div-int v2, v0, v5

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    add-int v3, v4, v5

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    const/high16 v6, 0x40000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->measure(II)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public scrollAwayRateCard()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->mClusterContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;->getCardChildAt(I)Lcom/google/android/play/layout/PlayCardViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardViewBase;->getWidth()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v1, v4}, Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsContentScroller;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    const-string v2, "scrollX"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
