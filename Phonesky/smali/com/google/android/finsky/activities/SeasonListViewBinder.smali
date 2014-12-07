.class public Lcom/google/android/finsky/activities/SeasonListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SeasonListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mRestoreBundle:Landroid/os/Bundle;

.field private mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mSelectedEpisodeId:Ljava/lang/String;

.field private mSelectedSeasonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private detachListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/EpisodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-super {p0, p2, p5, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    if-nez p8, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedEpisodeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedSeasonId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->detachListeners()V

    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1, p7, v2}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this version of init is not supported by this binder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0800cf

    iput v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mHeaderLayoutId:I

    iput-object p4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    iput-object p5, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p6, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p7, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public onDataChanged()V
    .locals 13

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v11, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSeasonsListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/EpisodeList;->restoreInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v4, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedSeasonId:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mSelectedEpisodeId:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/layout/EpisodeList;->setSeasonList(Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SeasonListViewBinder;->detachListeners()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mRestoreBundle:Landroid/os/Bundle;

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SeasonListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/EpisodeList;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
