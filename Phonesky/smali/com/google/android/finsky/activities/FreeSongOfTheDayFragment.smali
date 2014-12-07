.class public Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "FreeSongOfTheDayFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040077

    return v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected onInitViewBinders()V
    .locals 0

    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->rebindActionBar()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/android/finsky/api/model/Document;->getChildAt(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDealOfTheDayInfo()Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v9, 0x7f0800cf

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v9, v1, Lcom/google/android/finsky/protos/DocumentV2$DealOfTheDay;->featuredHeader:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getSecondaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v9, 0x7f08013c

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundColor(I)V

    const v9, 0x7f08013d

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    iget-object v9, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10, p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const v9, 0x7f08013e

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f08013f

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;

    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v10, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v11, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v9, v10, v11}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->init(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v9, p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->bind(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
