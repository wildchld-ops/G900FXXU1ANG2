.class public Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "PlayDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;
    }
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mDrawerDestinationsAdapter:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

.field private mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

.field private mMainActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerDestinationsAdapter:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const v0, 0x7f02006d

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->setDrawerShadow(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/activities/MainActivity;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    return-object v0
.end method


# virtual methods
.method public closeSideDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    # invokes: Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->restoreAndResetBreadcrumb()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->access$400(Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public configure(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/activities/MainActivity;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # I

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    const v4, 0x7f02008a

    const v5, 0x7f090354

    const v6, 0x7f090355

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->getDestinationsListView()Landroid/widget/ListView;

    move-result-object v8

    new-instance v0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerDestinationsAdapter:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerDestinationsAdapter:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$2;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->getAccountsListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v9, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;

    invoke-direct {v9, p1}, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$3;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$4;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iput p3, v10, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->syncActionBarIconState()V

    return-void
.end method

.method public getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->onFinishInflate()V

    const v0, 0x7f080176

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    return-void
.end method

.method public refresh(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {v0, p2, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->refresh(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerDestinationsAdapter:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->isTopLevelSideDrawerDestination(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    return-void
.end method

.method public syncActionBarIconState()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public toggleSideDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->closeDrawer(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->updateCurrentBackendId(I)V

    return-void
.end method
