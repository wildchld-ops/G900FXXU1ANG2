.class public Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeList;",
        ">;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field public static final SUPPORTS_MULTI_CHOICE:Z


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

.field private mCurrentActionMode:Landroid/view/ActionMode;

.field private final mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field private mLibraryView:Landroid/view/ViewGroup;

.field private mListInitialized:Z

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->SUPPORTS_MULTI_CHOICE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/library/AccountLibrary;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/activities/AuthenticatedActivity;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;
    .param p6    # Landroid/os/Bundle;
    .param p7    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p8    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .param p9    # Lcom/google/android/finsky/library/AccountLibrary;
    .param p10    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    new-instance v6, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V

    new-instance v8, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0x195

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p10

    invoke-direct {v8, v1, v2, v3, v0}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    move-object v2, p1

    move-object v3, p4

    move-object/from16 v4, p7

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;Landroid/view/View$OnLongClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mUseTwoColumnLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->showAccountSwitcher()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    return-object v0
.end method

.method private getLibraryList()Lcom/google/android/finsky/api/model/DfeList;
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    sget-object v5, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const/4 v5, 0x3

    sget-object v6, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v0}, Lcom/google/android/finsky/api/DfeApi;->getLibraryUrl(ILjava/lang/String;I[B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v5, "MyAppsLibraryTab.ListData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v5, "MyAppsLibraryTab.ListData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getInitialUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/api/model/DfeList;->setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v1, v4, v3, v7}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    sget-object v4, Lcom/google/android/finsky/config/G;->gmsCorePackageName:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/api/model/DfeList;->filterDocId(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method protected finishActiveMode()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDataChanged()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mLibraryView:Landroid/view/ViewGroup;

    const v3, 0x7f080192

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    sget-boolean v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->SUPPORTS_MULTI_CHOICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mUseTwoColumnLayout:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mUseTwoColumnLayout:Z

    if-nez v0, :cond_3

    :goto_1
    const v0, 0x7f0902c4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->configureEmptyUI(ZI)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->restoreTabSelection()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->syncViewToState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->onDataChanged()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p3    # I

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->INSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->UNINSTALLED:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListInitialized:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->requestData()V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->SUPPORTS_MULTI_CHOICE:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->setCanClickOnInstalledApps(Z)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getPositionForView(Landroid/view/View;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v1, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "MyAppsLibraryTab.ListData"

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method

.method protected requestData()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->clearState()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getLibraryList()Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->setDfeList(Lcom/google/android/finsky/api/model/DfeList;)V

    return-void
.end method

.method protected retryFromError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->resetItems()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->clearTransientState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    return-void
.end method

.method public setTabSelected(Z)V
    .locals 0
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->setTabSelected(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->finishActiveMode()V

    :cond_0
    return-void
.end method
