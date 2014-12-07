.class public Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;
.super Lcom/google/android/finsky/activities/myapps/MyAppsTab;
.source "MyAppsSubscriptionsTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
        "<",
        "Lcom/google/android/finsky/api/model/DfeBulkDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

.field private mAdapterInitialized:Z

.field mSubscriptionsInLibrary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsListView:Landroid/widget/ListView;

.field private mSubscriptionsView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/activities/AuthenticatedActivity;
    .param p2    # Lcom/google/android/finsky/api/DfeApi;
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;
    .param p6    # Landroid/os/Bundle;
    .param p7    # Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapterInitialized:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p1, v1, p7, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    return-object v0
.end method

.method protected getDocumentForView(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method protected getFullView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-super {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onDataChanged()V

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v10, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->getDocuments()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v8}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    if-nez v7, :cond_1

    const-string v10, "Subscription %s is unavailable, ignoring this entry"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v8, v11, v13

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v10, "Parent app %s of subscription %s is unavailable, ignoring this entry"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v13

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    invoke-virtual {v11, v10, v7, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->addEntry(Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v10}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sortDocs()V

    iget-boolean v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapterInitialized:Z

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsView:Landroid/view/ViewGroup;

    const v11, 0x7f080192

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-boolean v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mUseTwoColumnLayout:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsListView:Landroid/widget/ListView;

    invoke-virtual {v10, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_4
    iput-boolean v12, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapterInitialized:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->restoreTabSelection()V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->syncViewToState()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
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
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->requestData()V

    return-void
.end method

.method protected requestData()V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->clearState()V

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-virtual {v9}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->clear()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v9}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/library/AccountLibrary;

    if-eq v8, v0, :cond_0

    invoke-virtual {v8}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionsList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    invoke-virtual {v2}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppSubscriptionsList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    invoke-virtual {v2}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->getDocId()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mSubscriptionsInLibrary:Ljava/util/Map;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v9, v10, v4}, Lcom/google/android/finsky/api/model/DfeBulkDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/util/List;)V

    iput-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v9, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v9, p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->mDfeModel:Lcom/google/android/finsky/api/model/DfeModel;

    check-cast v9, Lcom/google/android/finsky/api/model/DfeBulkDetails;

    invoke-virtual {v9, p0}, Lcom/google/android/finsky/api/model/DfeBulkDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected retryFromError()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;->requestData()V

    return-void
.end method
