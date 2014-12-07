.class public Lcom/google/android/finsky/layout/EditorialListHeader;
.super Landroid/view/ViewGroup;
.source "EditorialListHeader.java"


# instance fields
.field private mColumnCount:I

.field private final mContentPadding:I

.field private mDescription:Lcom/google/android/play/layout/PlayTextView;

.field private mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

.field private mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/EditorialListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    return-void
.end method


# virtual methods
.method public bind(ILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;)V
    .locals 10
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .param p6    # Lcom/google/android/finsky/api/model/Document;
    .param p7    # Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;

    iput p1, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    move-object/from16 v0, p7

    iget-object v6, v0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->seriesTitle:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p7

    iget-object v8, v0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeTitle:Ljava/lang/String;

    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/google/android/finsky/protos/DocumentV2$EditorialSeriesContainer;->episodeSubtitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/api/model/Document;->hasImages(I)Z

    move-result v1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    new-instance v6, Lcom/google/android/finsky/layout/EditorialListHeader$1;

    invoke-direct {v6, p0, p3}, Lcom/google/android/finsky/layout/EditorialListHeader$1;-><init>(Lcom/google/android/finsky/layout/EditorialListHeader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/play/layout/PlayTextView;->setContent(Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/high16 v6, 0x3f100000

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setDefaultAspectRatio(F)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    move-object/from16 v0, p6

    invoke-virtual {v5, p2, v0, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;[I)V

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v4, v5, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v5, v4, p5}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialListHeader;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/google/android/finsky/layout/HeroGraphicView;->layout(IIII)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    iget v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->layout(IIII)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    if-le v3, v4, :cond_1

    iget v1, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    iget v4, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    iget v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    iget-object v6, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->layout(IIII)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->getRight()I

    move-result v0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->layout(IIII)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v5}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/play/layout/PlayTextView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialListHeader;->getPaddingBottom()I

    move-result v3

    iget v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/high16 v9, 0x40000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/google/android/finsky/layout/HeroGraphicView;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v2, v9

    :cond_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->measure(II)V

    iget v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    iget-object v10, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v6

    :goto_0
    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v9}, Lcom/google/android/play/layout/PlayTextView;->isExpanded()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v9, v0, v1}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v9}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v9

    iget v10, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    :cond_1
    :goto_2
    add-int v9, v2, v3

    invoke-virtual {p0, v8, v9}, Lcom/google/android/finsky/layout/EditorialListHeader;->setMeasuredDimension(II)V

    return-void

    :cond_2
    int-to-float v9, v8

    const/high16 v10, 0x3f100000

    mul-float/2addr v9, v10

    float-to-int v6, v9

    goto :goto_0

    :cond_3
    mul-int/lit8 v9, v6, 0x2

    div-int/lit8 v9, v9, 0x3

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    :cond_4
    iget v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    move v4, v8

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5

    iget v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    mul-int/2addr v9, v10

    sub-int v9, v8, v9

    iget v10, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mColumnCount:I

    div-int v7, v9, v10

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    const/high16 v10, 0x40000000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/google/android/finsky/layout/HeroGraphicView;->measure(II)V

    sub-int/2addr v4, v7

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v2

    :cond_5
    const/high16 v9, 0x40000000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->measure(II)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mHeroVideo:Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/HeroGraphicView;->getMeasuredHeight()I

    move-result v6

    :goto_3
    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v9}, Lcom/google/android/play/layout/PlayTextView;->isExpanded()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v9, v5, v1}, Lcom/google/android/play/layout/PlayTextView;->measure(II)V

    iget v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    iget-object v10, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v10}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mDescription:Lcom/google/android/play/layout/PlayTextView;

    invoke-virtual {v11}, Lcom/google/android/play/layout/PlayTextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mContentPadding:I

    add-int v2, v9, v10

    goto/16 :goto_2

    :cond_6
    int-to-float v9, v8

    const/high16 v10, 0x3f100000

    mul-float/2addr v9, v10

    float-to-int v6, v9

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/google/android/finsky/layout/EditorialListHeader;->mTitle:Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    invoke-virtual {v9}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v6, v9

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4
.end method
