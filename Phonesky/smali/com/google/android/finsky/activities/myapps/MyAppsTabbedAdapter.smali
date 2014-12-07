.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MyAppsTabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
    }
.end annotation


# instance fields
.field private final mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

.field private final mHasSubscriptions:Z

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mShowUpdateAllPrompt:Z

.field protected final mTabDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/os/Bundle;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Z)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/activities/AuthenticatedActivity;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/api/DfeApi;
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p5    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p6    # Z
    .param p7    # Landroid/os/Bundle;
    .param p8    # Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    .param p9    # Z

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-boolean p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    iput-object p8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iput-boolean p9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mShowUpdateAllPrompt:Z

    invoke-direct {p0, p7}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->generateTabList(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTitles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabTitles:Ljava/util/List;

    return-void
.end method

.method private generateTabList(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->restoreTabBundles(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-direct {v5, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-direct {v5, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    new-instance v5, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    # setter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getTabInstanceStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getTitles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mHasSubscriptions:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const v2, 0x7f0902e7

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const v2, 0x7f0902e5

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    const v2, 0x7f0902e6

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private restoreTabBundles(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "MyAppsTabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MyAppsTabbedAdapter.TabParcels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/activities/ViewPagerTab;

    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    # setter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->onDestroy()V

    return-void
.end method

.method finishActiveMode()V
    .locals 4

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->finishActiveMode()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getCurrentTab()Lcom/google/android/finsky/activities/myapps/MyAppsTab;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/finsky/activities/myapps/MyAppsTab",
            "<*>;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v2, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->isTabSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTabType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v0, v11, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-nez v0, :cond_0

    iget v1, v11, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iput-object v0, v11, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->loadData()V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v11}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-boolean v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mShowUpdateAllPrompt:Z

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledTab;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v9

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v11}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v10, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/library/AccountLibrary;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;
    invoke-static {v11}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsTab;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Landroid/os/Bundle;Lcom/google/android/finsky/utils/BitmapLoader;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Lcom/google/android/finsky/activities/ViewPagerTab;

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/google/android/finsky/activities/ViewPagerTab;->getView(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->mTabDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;

    iget-object v2, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->setTabSelected(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "MyAppsTabbedAdapter.TabParcels"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->getTabInstanceStates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
    .param p2    # Ljava/lang/ClassLoader;

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;

    return-void
.end method
