.class public Lcom/google/android/finsky/activities/PeopleDetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "PeopleDetailsFragment.java"


# instance fields
.field private mStreamViewBinder:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mStreamViewBinder:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/PeopleDetailsFragment;
    .locals 2
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->setDfeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f0400cb

    return v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->recordState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mStreamViewBinder:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->onDestroyView()V

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mStreamViewBinder:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->rebindActionBar()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->hasDetailsDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mStreamViewBinder:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mDataView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->mStreamViewBinder:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
