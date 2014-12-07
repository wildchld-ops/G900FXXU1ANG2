.class public Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsInstalledTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/MultiWayUpdateController;",
        ">;",
        "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;"
    }
.end annotation


# static fields
.field private static KEY_ALREADY_SHOWN_UPDATE_ALL_PROMPT:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

.field private mContext:Landroid/content/Context;

.field private mDocIdsByAccount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInstalledView:Landroid/view/ViewGroup;

.field private mListInitialized:Z

.field private mMyAppsList:Landroid/widget/ListView;

.field private mShowUpdateAllPrompt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "already_shown_update_all_prompt"

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->KEY_ALREADY_SHOWN_UPDATE_ALL_PROMPT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V
    .locals 10

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDocIdsByAccount:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0x195

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p8

    invoke-direct {v9, v1, v2, v3, v0}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    move-object v2, p1

    move-object/from16 v6, p7

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mShowUpdateAllPrompt:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDocIdsByAccount:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDocIdsByAccount:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public bucketsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->restoreTabSelection()V

    :cond_0
    return-void
.end method

.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v3, Lcom/google/android/finsky/api/model/MultiWayUpdateController;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/MultiWayUpdateController;->getDocuments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->addDocs(Ljava/util/Collection;)V

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mListInitialized:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    const v4, 0x7f08016d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mInstalledView:Landroid/view/ViewGroup;

    const v4, 0x7f080192

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mUseTwoColumnLayout:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mMyAppsList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_2
    iput-boolean v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mListInitialized:Z

    const/4 v3, 0x0

    const v4, 0x7f0902c5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->configureEmptyUI(ZI)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->restoreTabSelection()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->syncViewToState()V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getUpdateDocuments()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mShowUpdateAllPrompt:Z

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->KEY_ALREADY_SHOWN_UPDATE_ALL_PROMPT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v5}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getIntent(Landroid/content/Context;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mSavedInstanceState:Landroid/os/Bundle;

    sget-object v4, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->KEY_ALREADY_SHOWN_UPDATE_ALL_PROMPT:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    goto :goto_0
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    return-void
.end method

.method protected requestData()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected retryFromError()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->clearState()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;->requestData()V

    return-void
.end method
