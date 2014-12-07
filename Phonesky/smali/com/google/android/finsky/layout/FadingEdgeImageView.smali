.class public Lcom/google/android/finsky/layout/FadingEdgeImageView;
.super Lcom/google/android/finsky/layout/FifeImageView;
.source "FadingEdgeImageView.java"


# instance fields
.field private mFadingEdgeBackgroundColor:I

.field private mHasFadingLeftEdge:Z

.field private mHasFadingRightEdge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public clearFadingEdges()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setFadingEdgeLength(I)V

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingLeftEdge:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingRightEdge:Z

    return-void
.end method

.method public configureFadingEdges(ZZII)V
    .locals 1
    .param p1    # Z
    .param p2    # Z
    .param p3    # I
    .param p4    # I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, p3}, Lcom/google/android/finsky/layout/FadingEdgeImageView;->setFadingEdgeLength(I)V

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingLeftEdge:Z

    iput-boolean p2, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingRightEdge:Z

    iput p4, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mFadingEdgeBackgroundColor:I

    return-void
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingLeftEdge:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingRightEdge:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingLeftEdge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mHasFadingRightEdge:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/FadingEdgeImageView;->mFadingEdgeBackgroundColor:I

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getSolidColor()I

    move-result v0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method
