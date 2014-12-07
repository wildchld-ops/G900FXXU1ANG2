.class public Lcom/google/android/finsky/layout/play/PlayCardViewArtist;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewArtist.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewArtist;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewArtist;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewArtist;->getPaddingRight()I

    move-result v2

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewArtist;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v6, v0, v1

    sub-int/2addr v6, v2

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v5, v6, v7

    iget v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewArtist;->mThumbnailAspectRatio:F

    int-to-float v7, v5

    mul-float/2addr v6, v7

    float-to-int v3, v6

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewArtist;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->onMeasure(II)V

    return-void
.end method
