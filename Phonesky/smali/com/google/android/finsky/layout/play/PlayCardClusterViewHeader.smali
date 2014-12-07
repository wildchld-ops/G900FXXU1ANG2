.class public Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;
.super Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;
.source "PlayCardClusterViewHeader.java"


# instance fields
.field private mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

.field private final mMinHeight:I

.field private mMoreView:Landroid/widget/TextView;

.field private mTitleGroup:Landroid/view/View;

.field private mTitleMain:Landroid/widget/TextView;

.field private mTitleSecondary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/vending/R$styleable;->PlayCardClusterViewHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMinHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/layout/IdentifiableRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0800e0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleMain:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    const v1, 0x7f0800e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleSecondary:Landroid/widget/TextView;

    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getPaddingLeft()I

    move-result v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v12}, Lcom/google/android/finsky/layout/FifeImageView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v12}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v4

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v12}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v12, v0, v1

    sub-int/2addr v12, v8

    div-int/lit8 v12, v12, 0x2

    add-int v3, v8, v12

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    add-int v13, v11, v4

    add-int v14, v3, v1

    invoke-virtual {v12, v11, v3, v13, v14}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v12}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v4

    add-int/2addr v11, v12

    :cond_0
    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    iget-object v13, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v11

    invoke-virtual {v12, v11, v8, v13, v0}, Landroid/view/View;->layout(IIII)V

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getPaddingRight()I

    move-result v12

    sub-int v9, v10, v12

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    sub-int v12, v0, v5

    sub-int/2addr v12, v8

    div-int/lit8 v12, v12, 0x2

    add-int v6, v8, v12

    iget-object v12, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    sub-int v13, v9, v7

    add-int v14, v6, v5

    invoke-virtual {v12, v13, v6, v9, v14}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1    # I
    .param p2    # I

    const/16 v9, 0x8

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/FifeImageView;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredHeight()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v9, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v2, v4

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleGroup:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMinHeight:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setMeasuredDimension(II)V

    return-void
.end method

.method public replaceTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleMain:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleMain:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleSecondary:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setContent(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/protos/Doc$Image;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Landroid/view/View$OnClickListener;

    const/16 v4, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, p3, p1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleMain:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleSecondary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0, p7}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p7, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setClickable(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mHeaderImage:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleSecondary:Landroid/widget/TextView;

    invoke-static {p5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mTitleSecondary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->mMoreView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2
.end method
