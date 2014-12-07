.class public Lcom/google/android/finsky/layout/MovieTrailerView;
.super Lcom/google/android/finsky/layout/YoutubeFrameView;
.source "MovieTrailerView.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCurtainCaptionDurationView:Landroid/widget/TextView;

.field private mCurtainCaptionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/MovieTrailerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setCurtainCaption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    iput-object p2, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasVideoThumbnails()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v5, 0xd

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v4

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v1

    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v8, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v5, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, v5, p3}, Lcom/google/android/finsky/layout/MovieTrailerView;->showPlayIcon(Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v5, v2, Lcom/google/android/finsky/protos/Doc$Image;->altTextLocalized:Ljava/lang/String;

    iget v7, v2, Lcom/google/android/finsky/protos/Doc$Image;->durationSeconds:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/google/android/finsky/layout/MovieTrailerView;->setCurtainCaption(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/MovieTrailerView;->setVisibility(I)V

    :goto_4
    return-void

    :cond_0
    move-object v3, v5

    goto :goto_0

    :cond_1
    move-object v4, v5

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v1, v6

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/MovieTrailerView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected getClickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createMovieTrailerIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->onFinishInflate()V

    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/MovieTrailerView;->getPaddingRight()I

    move-result v4

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/FifeImageView;->getMeasuredWidth()I

    move-result v2

    sub-int v9, v8, v2

    sub-int/2addr v9, v4

    div-int/lit8 v3, v9, 0x2

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v10, 0x0

    add-int v11, v3, v2

    invoke-virtual {v9, v3, v10, v11, v0}, Lcom/google/android/finsky/layout/FifeImageView;->layout(IIII)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v9, v8, v7

    sub-int/2addr v9, v4

    div-int/lit8 v5, v9, 0x2

    sub-int v9, v0, v1

    div-int/lit8 v6, v9, 0x2

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    add-int v10, v5, v7

    add-int v11, v6, v1

    invoke-virtual {v9, v5, v6, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v0, v11

    iget-object v12, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v8, v10

    iget-object v11, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v0, v11

    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/widget/TextView;->layout(IIII)V

    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mAccessibilityOverlay:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v8, v0}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/ImageView;->measure(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/finsky/layout/FifeImageView;->measure(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionDurationView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    const/high16 v4, 0x40000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mCurtainCaptionView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->measure(II)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/MovieTrailerView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/ImageView;->measure(II)V

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/layout/MovieTrailerView;->setMeasuredDimension(II)V

    return-void
.end method
