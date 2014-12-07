.class Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;
.super Ljava/lang/Object;
.source "PlayDrawerLayout.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .param p1    # [Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mSideContent:Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$200(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->refresh(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$1;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->isTopLevelSideDrawerDestination(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    return-void
.end method
