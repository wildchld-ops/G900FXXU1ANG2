.class public Lcom/google/android/finsky/utils/DetailsShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DetailsShimFragment.java"


# instance fields
.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/utils/DetailsShimFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/DetailsShimFragment;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setDfeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    const-string v1, "finsky.DetailsFragment.externalUrl"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "finsky.DetailsFragment.overrideAccount"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/utils/DetailsShimFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->requestData()V

    return-void
.end method

.method public onDataChanged()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f09015a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "finsky.DetailsFragment.externalUrl"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "finsky.DetailsFragment.overrideAccount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    return-void
.end method

.method protected rebindViews()V
    .locals 0

    return-void
.end method

.method protected requestData()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/DetailsShimFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->switchToBlank()V

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DetailsShimFragment;->switchToLoading()V

    return-void
.end method
