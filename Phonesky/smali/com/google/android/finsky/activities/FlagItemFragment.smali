.class public Lcom/google/android/finsky/activities/FlagItemFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/FlagItemUserMessageDialog$Listener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;,
        Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;,
        Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    }
.end annotation


# instance fields
.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mDynamicButtonContainer:Z

.field private mFlagMessage:Ljava/lang/String;

.field private mFlagRadioButtons:Landroid/widget/RadioGroup;

.field private mSelectedRadioButtonId:I

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    const/16 v0, 0x12d

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/FlagItemFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/api/model/DfeDetails;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/FlagItemFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/FlagItemFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/FlagItemFragment;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    return-object v0
.end method

.method private getAppFlagTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-object v2, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;->getAppFlags(Z)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFlagTypesForCurrentCorpus(I)Ljava/util/List;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getAppFlagTypes()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/google/android/finsky/activities/FlagItemFragment$MusicFlagType;->getMusicFlags()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported backend type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFlagTypesForCurrentCorpus(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/activities/FlagItemFragment;
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/activities/FlagItemFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/FlagItemFragment;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    return-object v0
.end method

.method private postFlag()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f04006f

    return v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "flag_free_text_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    const-string v0, "flag_selected_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "flag_selected_button_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->switchToLoading()V

    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$2;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    new-instance v1, Lcom/google/android/finsky/activities/FlagItemFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$3;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onDestroyView()V

    return-void
.end method

.method public onDocumentLoaded(Lcom/google/android/finsky/api/model/Document;)V
    .locals 13
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->switchToData()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setDynamicFeaturesVisibility(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v4, p0

    move-object v7, v6

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFlagTypesForCurrentCorpus(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    const v0, 0x7f040072

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v11, v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iget v0, v12, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setText(I)V

    invoke-virtual {v9, v12}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSelectedRadioButtonId:I

    iget v1, v12, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->onDataChanged()V

    return-void
.end method

.method protected onInitViewBinders()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDynamicButtonContainer:Z

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    const v2, 0x7f09028d

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/google/android/finsky/activities/FlagItemFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/FlagItemFragment$1;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment;Lcom/google/android/finsky/layout/ButtonBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->requireUserComment()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "flag_item_dialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    iget v3, v0, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->textEntryStringId:I

    invoke-static {v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->newInstance(I)Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const-string v3, "flag_item_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/FlagItemUserMessageDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->postFlag()V

    goto :goto_0
.end method

.method public onPositiveClick(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->postFlag()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    const-string v0, "doc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "flag_free_text_message"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "flag_selected_button_id"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->getSelectedFlagType()Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;

    move-result-object v1

    iget v1, v1, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;->stringId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public rebindActionBar()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    return-void
.end method

.method public rebindViews()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v6, 0x7f080135

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    const v5, 0x7f09027c

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDynamicButtonContainer:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v6, 0x7f0800be

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/DetailsSummaryLarge;

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/layout/DetailsSummaryLarge;->setDocumentType(I)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v6, 0x7f080137

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f09027f

    new-array v6, v8, [Ljava/lang/Object;

    sget-object v7, Lcom/google/android/finsky/config/G;->musicDmcaReportLink:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/activities/FlagItemFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    new-array v7, v8, [Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v9, v7}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDataView:Landroid/view/ViewGroup;

    const v6, 0x7f08009a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/finsky/activities/FlagItemFragment;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FlagItemFragment;->rebindActionBar()V

    :cond_2
    return-void

    :cond_3
    const v5, 0x7f09027e

    goto :goto_0
.end method

.method protected requestData()V
    .locals 0

    return-void
.end method
