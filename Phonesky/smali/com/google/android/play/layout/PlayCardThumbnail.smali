.class public Lcom/google/android/play/layout/PlayCardThumbnail;
.super Landroid/view/ViewGroup;
.source "PlayCardThumbnail.java"


# instance fields
.field private final mAppThumbnailPadding:I

.field private mCoverPadding:I

.field private final mPersonThumbnailPadding:I

.field private mThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayCardThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/google/android/play/R$styleable;->PlayCardThumbnail:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mAppThumbnailPadding:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mPersonThumbnailPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    sget v0, Lcom/google/android/play/R$id;->li_thumbnail:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardThumbnail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mThumbnail:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mThumbnail:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    iget v2, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    iget v3, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    iget-object v5, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v4, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mThumbnail:Landroid/widget/ImageView;

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/play/layout/PlayCardThumbnail;->setMeasuredDimension(II)V

    return-void
.end method

.method public updatePadding(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mAppThumbnailPadding:I

    iput v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    :goto_0
    iget v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardThumbnail;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mPersonThumbnailPadding:I

    iput v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/play/layout/PlayCardThumbnail;->mCoverPadding:I

    goto :goto_0
.end method
