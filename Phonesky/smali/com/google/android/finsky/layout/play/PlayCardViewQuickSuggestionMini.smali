.class public Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;
.super Lcom/google/android/play/layout/PlayCardViewMini;
.source "PlayCardViewQuickSuggestionMini.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/finsky/layout/play/PlayCardQuickSuggestionsClusterViewContent$PendingStateHandler;


# instance fields
.field private final mCardInset:I

.field private mIsInPendingState:Z

.field private mPendingOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewMini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mIsInPendingState:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mCardInset:I

    return-void
.end method


# virtual methods
.method public exitPendingStateIfNecessary()V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mIsInPendingState:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mIsInPendingState:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewMini;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mIsInPendingState:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mIsInPendingState:Z

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewMini;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewMini;->onFinishInflate()V

    const v0, 0x7f0801d3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/google/android/play/layout/PlayCardViewMini;->onLayout(ZIIII)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v1}, Lcom/google/android/play/layout/PlayCardThumbnail;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mCardInset:I

    iget v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mCardInset:I

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    const/high16 v4, 0x40000000

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewMini;->onMeasure(II)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mCardInset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mCardInset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewQuickSuggestionMini;->mPendingOverlay:Landroid/view/View;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method
