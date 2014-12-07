.class public Lcom/google/android/finsky/activities/SongListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SongListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mInitialDocumentsOwned:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNumSongsToShow:I

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mUseActualTrackNumbers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    return-void
.end method

.method private detachRequestListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method private populateFromLibrary(Lcom/google/android/finsky/library/Library;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/SongList;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iget v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    if-nez v1, :cond_2

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v9}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_1

    invoke-static {v11, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    iget-object v6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/layout/SongList;->setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 4

    const/4 v1, 0x2

    invoke-super {p0, p1, p3, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    iput-object p9, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p10, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p11, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez p8, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iput-object p2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    iput p7, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p5, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    iput-boolean p6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->populateFromLibrary(Lcom/google/android/finsky/library/Library;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->populateFromLibrary(Lcom/google/android/finsky/library/Library;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const-string v5, "SongListViewBinder.InitialDocumentsOwned"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_0
    const-string v2, "SongListViewBinder.InitialDocumentsOwned"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
