.class public Lcom/google/android/finsky/activities/CreatorDetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "CreatorDetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;


# static fields
.field private static final HERO_IMAGE_TYPES_DEFAULT:[I

.field private static final HERO_IMAGE_TYPES_TV_SHOW:[I


# instance fields
.field private final mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

.field private final mMaxCreatorRelatedItemRows:I

.field private final mMaxCreatorRelatedItemsPerRow:I

.field private final mMaxRelatedItemRows:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mMaxRelatedMusicItemRows:I

.field private final mMaxRelatedMusicItemsPerRow:I

.field private mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

.field private mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private final mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->HERO_IMAGE_TYPES_DEFAULT:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->HERO_IMAGE_TYPES_TV_SHOW:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SeasonListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemRows:I

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemRows:I

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemsPerRow:I

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedMusicItemsPerRow:I

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedMusicItemRows:I

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    return-void
.end method

.method private moveViewOneUp(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method private rebindMusicSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .locals 19

    const/16 v17, 0x0

    const v4, 0x7f08009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/SongList;

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v15, p0

    invoke-virtual/range {v4 .. v15}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    :goto_0
    const v4, 0x7f08009d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    if-eqz v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    :goto_1
    const v4, 0x7f0800a3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/ListingView;

    if-eqz v16, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v6

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v4, v6, v2}, Lcom/google/android/finsky/layout/ListingView;->bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_2
    :goto_2
    const v4, 0x7f0800a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkHeader()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkListUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getBodyOfWorkBrowseUrl()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedItemRows:I

    move-object/from16 v8, p2

    move-object/from16 v15, p0

    invoke-virtual/range {v6 .. v15}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->moveViewOneUp(Landroid/view/View;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeHeader()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getRelatedDocTypeListUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v15, p0

    invoke-virtual/range {v4 .. v15}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private rebindTvSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
    .locals 19

    const v1, 0x7f08009f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/EpisodeList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/EpisodeList;->addSeasonSelectionListener(Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const-string v1, "cdid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "gdid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v9

    move-object/from16 v10, p0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->bind(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/EpisodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    const v1, 0x7f0800a1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_1

    const v1, 0x7f0801ef

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->initialize(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v13

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v15, p0

    invoke-virtual/range {v6 .. v15}, Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/library/Libraries;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;ZZLcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v8, Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, v17

    invoke-direct/range {v8 .. v14}, Lcom/google/android/finsky/activities/ReviewDialogListener;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/RateReviewSection;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v12

    move-object/from16 v9, v18

    move-object/from16 v11, p2

    move-object/from16 v13, p0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040033

    return v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public onCancelReview()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onCancelReview()V

    return-void
.end method

.method public onDeleteReview(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onDeleteReview(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mEpisodeList:Lcom/google/android/finsky/layout/EpisodeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/EpisodeList;->removeSeasonSelectionListener()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    move-object v4, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mAlbumsViewBinder:Lcom/google/android/finsky/activities/AlbumPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v2, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x200a0000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    return-void
.end method

.method public onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method public onSeasonSelected(Lcom/google/android/finsky/api/model/Document;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasProductDetails()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/layout/ListingView;->bindProductDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    goto :goto_0
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 39

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindActionBar()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    invoke-static {v4, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v29

    const v4, 0x7f0800ba

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    if-eqz v37, :cond_0

    const v4, 0x7f0800bb

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const v4, 0x7f08009a

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_1

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const v4, 0x7f080099

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v28, :cond_2

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, v28

    invoke-static {v6, v4, v0}, Lcom/google/android/finsky/utils/BadgeUtils;->configureItemBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    :cond_2
    const v4, 0x7f080096

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v7, 0x12

    if-ne v4, v7, :cond_a

    sget-object v31, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->HERO_IMAGE_TYPES_TV_SHOW:[I

    :goto_0
    const/high16 v4, 0x3f000000

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/HeroGraphicView;->setDefaultAspectRatio(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v6, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v4}, Lcom/google/android/finsky/layout/HeroGraphicView;->bindLightboxImage(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    const v4, 0x7f0800a4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    if-eqz v33, :cond_3

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/finsky/layout/HeroGraphicView;->getVisibility()I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v4, 0x7f0800b8

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/BadgeSection;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/finsky/layout/BadgeSection;->configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_4
    const v4, 0x7f08009c

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v7, -0x1

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p0

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const v4, 0x7f080098

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_b

    const/16 v32, 0x1

    :goto_1
    if-eqz v32, :cond_c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedMusicItemsPerRow:I

    :goto_2
    if-eqz v32, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxRelatedMusicItemRows:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v13

    move-object v9, v6

    move-object/from16 v16, p0

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_5
    :goto_4
    const v4, 0x7f080097

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lcom/google/android/finsky/layout/ListingView;

    if-eqz v34, :cond_6

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v6, v1}, Lcom/google/android/finsky/layout/ListingView;->bindLinks(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_6
    const v4, 0x7f0800d5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/DetailsPlusOne;

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v21, v6

    move-object/from16 v24, p1

    move-object/from16 v25, p0

    invoke-virtual/range {v16 .. v25}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bind(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/api/model/Document;ZZLandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_7
    const v4, 0x7f0800a2

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ListingView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v7, 0x12

    if-eq v4, v7, :cond_8

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->hasProductDetails()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mProductDetailsPanel:Lcom/google/android/finsky/layout/ListingView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/finsky/layout/ListingView;->bindProductDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindTvSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->rebindMusicSections(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    const v4, 0x7f0800d3

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v35, :cond_9

    const/16 v4, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void

    :cond_a
    sget-object v31, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->HERO_IMAGE_TYPES_DEFAULT:[I

    goto/16 :goto_0

    :cond_b
    const/16 v32, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemsPerRow:I

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mMaxCreatorRelatedItemRows:I

    goto/16 :goto_3

    :cond_e
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v3, 0x7f08009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    const v3, 0x7f0800d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsPlusOne;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSeasonListViewBinder:Lcom/google/android/finsky/activities/SeasonListViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
