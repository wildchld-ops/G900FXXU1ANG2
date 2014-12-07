.class public Lcom/google/android/finsky/layout/FakeActionBar;
.super Ljava/lang/Object;
.source "FakeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mBackendId:I

.field private mBreadcrumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    return-void
.end method

.method public autoUpdateButtonClicked(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method public clearTabs()V
    .locals 0

    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
    .param p2    # Landroid/view/Menu;

    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBreadcrumb:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBackendId()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    return v0
.end method

.method public getSideDrawerDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p2    # Landroid/app/Activity;
    .param p3    # Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;

    const/4 v0, 0x0

    return v0
.end method

.method public setSelectedTab(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBreadcrumb:Ljava/lang/String;

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    iget v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public wishlistButtonClicked(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    return-void
.end method
