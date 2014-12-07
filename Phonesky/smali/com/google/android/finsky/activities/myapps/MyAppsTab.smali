.class public abstract Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.super Ljava/lang/Object;
.source "MyAppsTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/ViewPagerTab;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/installer/InstallerListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/activities/ViewPagerTab;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
        "Lcom/google/android/finsky/installer/InstallerListener;",
        "Lcom/google/android/finsky/library/Libraries$Listener;"
    }
.end annotation


# instance fields
.field protected final mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field protected final mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

.field protected final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field protected final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mIsSelectedTab:Z

.field private mLastVolleyError:Lcom/android/volley/VolleyError;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field protected final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected final mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectionHandler:Landroid/os/Handler;

.field protected final mUseTwoColumnLayout:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/activities/AuthenticatedActivity;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;
    .param p6    # Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mUseTwoColumnLayout:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, p6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSelectionHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    return-void
.end method

.method private final getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDefaultSelection(Z)V
    .locals 6
    .param p1    # Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :cond_0
    if-ltz v2, :cond_4

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-nez v1, :cond_3

    move v3, v2

    :goto_0
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(IZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(IZ)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(IZ)V

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private saveCurrentSelection()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v3, "checked_document_id"

    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectDocumentAtPosition(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSelectionHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;ZLcom/google/android/finsky/api/model/Document;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method clearDocumentView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;->clearDocDetails()V

    return-void
.end method

.method protected clearState()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeModel;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeModel;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    :cond_0
    return-void
.end method

.method protected configureEmptyUI(ZI)V
    .locals 6
    .param p1    # Z
    .param p2    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getFullView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsEmptyView;->configure(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/AuthenticatedActivity;ZI)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected finishActiveMode()V
    .locals 0

    return-void
.end method

.method protected abstract getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
.end method

.method getDisplayedDocId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDetailsOpener:Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;->getDisplayedDocId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
.end method

.method protected abstract getFullView()Landroid/view/View;
.end method

.method protected abstract getListView()Landroid/widget/ListView;
.end method

.method protected getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f080021

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    move-object v3, p1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v1

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    :cond_3
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    goto :goto_1
.end method

.method protected final isDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeModel;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    return v0
.end method

.method final loadData()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->requestData()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getPositionForView(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(IZ)V

    goto :goto_1
.end method

.method public onDataChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->clearState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyAppsTab.ListParcelKey"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method protected abstract requestData()V
.end method

.method protected restoreTabSelection()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyAppsTab.ListParcelKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v2, "MyAppsTab.ListParcelKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "MyAppsTab.ListParcelKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mUseTwoColumnLayout:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checked_document_id"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "checked_document_id"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocument(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->makeDefaultSelection(Z)V

    goto :goto_0
.end method

.method protected abstract retryFromError()V
.end method

.method selectDocument(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->selectDocumentAtPosition(IZ)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->makeDefaultSelection(Z)V

    goto :goto_0
.end method

.method public setTabSelected(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mIsSelectedTab:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->restoreTabSelection()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->saveCurrentSelection()V

    goto :goto_0
.end method

.method protected syncViewToState()V
    .locals 8

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getFullView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f08016d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0801b9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f080192

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    if-eqz v5, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080054

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->mLastVolleyError:Lcom/android/volley/VolleyError;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f080130

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isDataReady()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
