.class Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "PlayDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayActionBarDrawerToggle"
.end annotation


# instance fields
.field private mPreviousBreadcrumb:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->restoreAndResetBreadcrumb()V

    return-void
.end method

.method private restoreAndResetBreadcrumb()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->restoreBreadcrumb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->mPreviousBreadcrumb:Ljava/lang/String;

    return-void
.end method

.method private restoreBreadcrumb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->mPreviousBreadcrumb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->mPreviousBreadcrumb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->updateBreadcrumb(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->restoreBreadcrumb()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v4}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBreadcrumb()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->mPreviousBreadcrumb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v4}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->isTopLevelSideDrawerDestination(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Z

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v4}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    const v0, 0x7f090111

    :goto_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v4}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mMainActivity:Lcom/google/android/finsky/activities/MainActivity;
    invoke-static {v5}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$000(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/activities/MainActivity;->updateBreadcrumb(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f090358

    goto :goto_1
.end method
