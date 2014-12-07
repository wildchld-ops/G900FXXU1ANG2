.class public Lcom/google/android/finsky/layout/SongList;
.super Landroid/widget/LinearLayout;
.source "SongList.java"


# instance fields
.field private mHighlightedSongDocId:Ljava/lang/String;

.field private mParent:Landroid/widget/ScrollView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private final mSongSnippets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/SongSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mSongsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    new-instance v0, Lcom/google/android/finsky/layout/SongList$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongList$1;-><init>(Lcom/google/android/finsky/layout/SongList;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongList;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/SongList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongList;)Ljava/util/Map;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/SongList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongList;)Landroid/widget/ScrollView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/SongList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private hideUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto :goto_0
.end method

.method private highlightSong()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SongSnippet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/SongList;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z
    .locals 5
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    move-result-object v3

    iget-object v1, v3, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;->name:Ljava/lang/String;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08017f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    return-void
.end method

.method public setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 25
    .param p1    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/api/model/Document;
    .param p5    # Z
    .param p7    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->hideUi()V

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/SongList;->shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z

    move-result v8

    const v4, 0x7f08017e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/google/android/finsky/layout/PlaylistControlButtons;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    if-lez v4, :cond_3

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v18

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v19

    const v4, 0x7f08017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz p3, :cond_7

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/finsky/api/model/Document;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->areRequiredSubsOwnedForAllDocs(Lcom/google/android/finsky/library/Library;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->areRequiredSubsOwnedForAllDocs(Lcom/google/android/finsky/library/Library;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setVisibility(I)V

    new-instance v20, Lcom/google/android/finsky/layout/SongList$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/SongList$2;-><init>(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;)V

    const/4 v4, 0x2

    const v5, 0x7f09011c

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->configure(IILandroid/view/View$OnClickListener;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_b

    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    const v4, 0x7f04009d

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/SongSnippet;

    if-eqz p5, :cond_9

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v4

    iget v7, v4, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->trackNumber:I

    :goto_4
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v17

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v17, :cond_a

    if-nez v24, :cond_a

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p1

    move-object/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/finsky/layout/SongSnippet;->setSongDetails(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v12, :cond_6

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/SongSnippet;->isPlayable()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/SongSnippet;->initialize()V

    const/4 v12, 0x1

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_8

    const/16 v4, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setVisibility(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->configure(Ljava/util/Collection;)V

    new-instance v4, Lcom/google/android/finsky/layout/SongList$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/google/android/finsky/layout/SongList$3;-><init>(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v7, v14, 0x1

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->highlightSong()V

    goto/16 :goto_0
.end method
