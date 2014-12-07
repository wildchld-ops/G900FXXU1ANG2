.class public Lcom/google/android/finsky/layout/DocumentViewSummary;
.super Landroid/widget/RelativeLayout;
.source "DocumentViewSummary.java"


# instance fields
.field private mButtonContainer:Landroid/view/View;

.field private mThumbnailFrame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DocumentViewSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mThumbnailFrame:Landroid/view/View;

    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DocumentViewSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mThumbnailFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v0, v1, v2

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/DocumentViewSummary;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method
