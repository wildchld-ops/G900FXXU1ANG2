.class public Lcom/google/android/finsky/layout/EpisodeList;
.super Landroid/widget/LinearLayout;
.source "EpisodeList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;,
        Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;
    }
.end annotation


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEpisodeIdFromBundle:Ljava/lang/String;

.field private final mEpisodeSnippets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/EpisodeSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mEpisodesContainer:Landroid/widget/LinearLayout;

.field private mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLoadingOverlay:Landroid/view/View;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mOldSeason:Lcom/google/android/finsky/api/model/Document;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSeasonIdFromBundle:Ljava/lang/String;

.field private mSeasonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mSeasonSelectedListener:Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;

.field private mSeasonSpinner:Landroid/widget/Spinner;

.field private mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

.field private mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    const/16 v0, 0xd3

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/EpisodeList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private hideUi()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setVisibility(I)V

    goto :goto_0
.end method

.method private setDefaultSelectionState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setEpisodeList(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)V
    .locals 13
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonNode()V

    const/4 v11, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f04006a

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v9

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v9, :cond_2

    if-nez v12, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setEpisodeDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v11, v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/google/android/finsky/layout/EpisodeSnippet;->expand()V

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->isInProgressSeason()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040083

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    return-void
.end method

.method private shouldEnableLoadingOverlay(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeList$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeList$1;-><init>(Lcom/google/android/finsky/layout/EpisodeList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateSeasonBuyButton()V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v3, v2

    move-object v4, v2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Lcom/google/android/play/layout/PlayActionButton;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private updateSeasonNode()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v2, v2, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    array-length v2, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, v2, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    sget-object v3, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iput-object v3, v2, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->hasServerLogsCookie:Z

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v3, v2, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->serverLogsCookie:[B

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSelectedListener:Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSelectedListener:Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;->onSeasonSelected(Lcom/google/android/finsky/api/model/Document;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addSeasonSelectionListener(Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;

    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSelectedListener:Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;

    return-void
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public getSelectedEpisodeId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/EpisodeSnippet;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedSeasonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040137

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public onCollapsedStateChanged(Lcom/google/android/finsky/layout/EpisodeSnippet;Z)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/layout/EpisodeSnippet;
    .param p2    # Z

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/EpisodeSnippet;

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->collapseWithoutNotifyingListeners()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDataChanged()V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, v5}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v5, v1}, Lcom/google/android/finsky/layout/EpisodeList;->setEpisodeList(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonNode()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLoadingOverlay:Landroid/view/View;

    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mOldSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonNode()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList;->shouldEnableLoadingOverlay(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeasonRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public removeSeasonSelectionListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSelectedListener:Lcom/google/android/finsky/layout/EpisodeList$SeasonSelectionListener;

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    :cond_0
    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodeIdFromBundle:Ljava/lang/String;

    :cond_1
    const-string v1, "SeasonListViewBinder.OwnedEpisodes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    :cond_2
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedSeasonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SeasonListViewBinder.SelectedSeasonId"

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedSeasonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SeasonListViewBinder.SelectedEpisodeId"

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getSelectedEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList;->mEpisodesInLibraryFromFirstLoad:Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v1, "SeasonListViewBinder.OwnedEpisodes"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setSeasonList(Lcom/google/android/finsky/fragments/PageFragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/fragments/PageFragment;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/library/Libraries;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p6    # Landroid/os/Bundle;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/fragments/PageFragment;",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/library/Libraries;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->hideUi()V

    :goto_0
    return-void

    :cond_1
    iput-object p7, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    move-object/from16 v0, p9

    invoke-direct {p0, p8, v0}, Lcom/google/android/finsky/layout/EpisodeList;->setDefaultSelectionState(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;-><init>(Lcom/google/android/finsky/layout/EpisodeList;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonIdFromBundle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonNode()V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setClickable(Z)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeList;->mSeasonSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V

    goto/16 :goto_0
.end method
