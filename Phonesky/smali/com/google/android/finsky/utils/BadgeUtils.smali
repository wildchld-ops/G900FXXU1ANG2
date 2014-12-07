.class public Lcom/google/android/finsky/utils/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# direct methods
.method public static configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCreatorBadges()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstCreatorBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTextSize()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v2, v4, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static configureItemBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTextSize()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v2, v4, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/widget/RatingBar;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTextSize()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v5, v3, v6, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    :cond_2
    iget-object v5, v3, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f07006b

    invoke-virtual {p2, v5, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->setContentColorStateListId(IZ)V

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p2, v9, v5, v9, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setPadding(IIII)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCensoring()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasReleaseType()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-static {p0, p2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayTextView;)V

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p2, v4, v5, v4, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setPadding(IIII)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_7

    invoke-static {p0, p2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureReleaseDate(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayTextView;)V

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p2, v9, v5, v9, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setPadding(IIII)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/RatingBar;->setRating(F)V

    invoke-virtual {p1, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private static configureReleaseDate(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayTextView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    const v0, 0x7f070032

    invoke-virtual {p1, v0, v2}, Lcom/google/android/play/layout/PlayTextView;->setContentColorId(IZ)V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/play/layout/PlayTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/google/android/play/layout/PlayTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayTextView;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const v0, 0x7f070042

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCensoring()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getCensoring()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    if-ne v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasReleaseType()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getReleaseType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :cond_1
    :goto_1
    if-le v2, v5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/play/layout/PlayTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/google/android/play/layout/PlayTextView;->setContentColorId(IZ)V

    invoke-virtual {p1, v4, v4, v4, v4}, Lcom/google/android/play/layout/PlayTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :pswitch_0
    const v2, 0x7f0902df

    const v0, 0x7f070041

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0902e0

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0902e2

    goto :goto_1

    :pswitch_3
    const v2, 0x7f0902e3

    goto :goto_1

    :pswitch_4
    const v2, 0x7f0902e1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getImage(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;I)Lcom/google/android/finsky/protos/Doc$Image;
    .locals 5

    iget-object v0, p1, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->image:[Lcom/google/android/finsky/protos/Doc$Image;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    iget v4, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    if-ne v4, p2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getImageUrl(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;II)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/utils/BadgeUtils;->getImage(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    if-eqz v2, :cond_0

    invoke-static {p0, v1, p3, p3}, Lcom/google/android/finsky/utils/image/ThumbnailUtils;->buildFifeUrlWithScaling(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
