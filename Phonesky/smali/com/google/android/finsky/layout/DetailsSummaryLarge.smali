.class public Lcom/google/android/finsky/layout/DetailsSummaryLarge;
.super Landroid/widget/LinearLayout;
.source "DetailsSummaryLarge.java"


# instance fields
.field private mThumbnail:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryLarge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryLarge;->mThumbnail:Landroid/view/View;

    return-void
.end method

.method public setDocumentType(I)V
    .locals 4
    .param p1    # I

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryLarge;->mThumbnail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryLarge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getLargeDetailsIconWidth(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryLarge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getLargeDetailsIconHeight(Landroid/content/Context;I)I

    move-result v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
