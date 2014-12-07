.class public abstract Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DetailsDataBasedFragment.java"


# instance fields
.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field protected mDocumentUiElementNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

.field private mPageCreationTime:J

.field private mRootUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field protected mSavedInstanceState:Landroid/os/Bundle;

.field private mSentImpression:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getPlayStoreUiElementType()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mRootUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocumentUiElementNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSentImpression:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-void
.end method


# virtual methods
.method protected getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method public getDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method protected final getLibraries()Lcom/google/android/finsky/library/Libraries;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method public final getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mRootUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected abstract getPlayStoreUiElementType()I
.end method

.method protected hasDetailsDataLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/finsky/utils/Nfc;->getHandler(Lcom/google/android/finsky/activities/DetailsDataBasedFragment;)Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.DetailsDataBasedFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->switchToBlank()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->rebindActionBar()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageCreationTime:J

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f09015a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onDataChanged()V

    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDataChanged()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->updateDocument(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onPause()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mNfcHandler:Lcom/google/android/finsky/utils/Nfc$NfcHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/utils/Nfc$NfcHandler;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->recordState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final rebindViews()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mRootUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocumentUiElementNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0xd1

    invoke-direct {v0, v1, v2, v2, p0}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocumentUiElementNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocumentUiElementNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->setServerLogsCookie([B)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSentImpression:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocumentUiElementNode:Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSentImpression:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->rebindViews(Landroid/os/Bundle;)V

    const-string v0, "Page [class=%s] loaded in [%s ms] (hasDetailsDataLoaded? %b)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mPageCreationTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->hasDetailsDataLoaded()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract rebindViews(Landroid/os/Bundle;)V
.end method

.method protected final recordState()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->recordState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract recordState(Landroid/os/Bundle;)V
.end method

.method protected requestData()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1

    const-string v0, "finsky.DetailsDataBasedFragment.document"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected updateDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    return-void
.end method
