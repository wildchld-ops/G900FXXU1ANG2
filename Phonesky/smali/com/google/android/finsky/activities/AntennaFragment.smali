.class public Lcom/google/android/finsky/activities/AntennaFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "AntennaFragment.java"


# instance fields
.field private final mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mMaxRelatedItemRows:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mUseWideHeaderImage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemsPerRow:I

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemRows:I

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDefaultDescriptionLines:I

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/AntennaFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/AntennaFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/AntennaFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/AntennaFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040063

    return v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method

.method public rebindActionBar()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->rebindActionBar()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAntennaInfo()Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getView()Landroid/view/View;

    move-result-object v22

    const v2, 0x7f080119

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/google/android/finsky/layout/HeroGraphicView;

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/finsky/layout/HeroGraphicView;->hideAccessibilityOverlay()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x1

    new-array v7, v2, [I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUseWideHeaderImage:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    :goto_0
    aput v2, v7, v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v4, v7}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;[I)V

    const v2, 0x7f08011b

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/google/android/finsky/layout/EditorialHeaderTitle;

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;->seriesTitle:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;->seriesSubtitle:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;->episodeTitle:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;->episodeSubtitle:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5, v7, v10}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f08009c

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v5, -0x1

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    const v2, 0x7f08011a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/google/android/finsky/layout/HeroGraphicView;

    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v7, 0x0

    const/4 v10, 0x1

    aput v10, v5, v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;[I)V

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v2, v2, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const v2, 0x7f0901cc

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setContentDescription(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    :goto_1
    const v2, 0x7f08009e

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SongList;

    if-eqz v6, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;->sectionTracks:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f0902cd

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    const/4 v11, 0x0

    const v12, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->hasDetailsDataLoaded()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v16, p0

    invoke-virtual/range {v5 .. v16}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    const v2, 0x7f0800a0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$SeriesAntenna;->sectionAlbums:Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBodyOfWorkViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->descriptionHtml:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->browseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemsPerRow:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mMaxRelatedItemRows:I

    move-object v9, v4

    move-object/from16 v16, p0

    invoke-virtual/range {v7 .. v16}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_2
    const v2, 0x7f0800d5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/layout/DetailsPlusOne;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/AntennaFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/AntennaFragment;->hasDetailsDataLoaded()Z

    move-result v15

    const/16 v16, 0x0

    move-object v14, v4

    move-object/from16 v17, p1

    move-object/from16 v18, p0

    invoke-virtual/range {v9 .. v18}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bind(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/api/model/Document;ZZLandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_3
    return-void

    :cond_4
    const/16 v2, 0x9

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AntennaFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f08009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/AntennaFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_2
    const v3, 0x7f0800d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsPlusOne;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method
