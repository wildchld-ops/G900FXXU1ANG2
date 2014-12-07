.class public Lcom/google/android/finsky/adapters/SearchAdapter;
.super Lcom/google/android/finsky/adapters/CardListAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/SearchAdapter$StringBasedSpinnerAdapter;
    }
.end annotation


# instance fields
.field private final mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

.field private final mHasSuggestedQuery:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/DfeSearch;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p8

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/google/android/finsky/adapters/CardListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ZZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mHasSuggestedQuery:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/SearchAdapter;)Lcom/google/android/finsky/api/model/DfeSearch;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    return-object v0
.end method

.method private bindSuggestionHeader(Lcom/google/android/finsky/layout/SuggestionBarLayout;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->bind(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setClickable(Z)V

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setFocusable(Z)V

    const-string v2, "suggestion_header"

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setIdentifier(Ljava/lang/String;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method private getSuggestionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    const v1, 0x7f040134

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/SearchAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/google/android/finsky/layout/SuggestionBarLayout;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/adapters/SearchAdapter;->bindSuggestionHeader(Lcom/google/android/finsky/layout/SuggestionBarLayout;)V

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private makeSuggestionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/adapters/SearchAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter$2;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected bindSpinnerData(Lcom/google/android/finsky/layout/play/Identifiable;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 8

    const-string v6, "corpus_selector"

    invoke-interface {p1, v6}, Lcom/google/android/finsky/layout/play/Identifiable;->setIdentifier(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/DfeSearch;->getRelatedSearches()[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    move-result-object v2

    array-length v6, v2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x0

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    aget-object v0, v2, v1

    iget-object v6, v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->header:Ljava/lang/String;

    aput-object v6, v5, v1

    if-nez v4, :cond_0

    iget-boolean v6, v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->current:Z

    if-eqz v6, :cond_0

    move v4, v1

    iget v3, v0, Lcom/google/android/finsky/protos/Search$RelatedSearch;->backendId:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusSpinnerDrawable(I)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    if-eqz p3, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    new-instance v6, Lcom/google/android/finsky/adapters/SearchAdapter$StringBasedSpinnerAdapter;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/google/android/finsky/adapters/SearchAdapter$StringBasedSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v6, Lcom/google/android/finsky/adapters/SearchAdapter$1;

    invoke-direct {v6, p0, v2, p2}, Lcom/google/android/finsky/adapters/SearchAdapter$1;-><init>(Lcom/google/android/finsky/adapters/SearchAdapter;[Lcom/google/android/finsky/protos/Search$RelatedSearch;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected getClusterClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 2

    invoke-static {p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->hasClickListener(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mHasSuggestedQuery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mHasSuggestedQuery:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/SearchAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/SearchAdapter;->getSuggestionHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mHasSuggestedQuery:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sub-int v0, p1, v0

    invoke-super {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/CardListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected hasFilters()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SearchAdapter;->mDfeSearch:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getRelatedSearches()[Lcom/google/android/finsky/protos/Search$RelatedSearch;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
