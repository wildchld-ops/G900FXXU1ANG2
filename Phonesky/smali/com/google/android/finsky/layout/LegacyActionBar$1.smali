.class Lcom/google/android/finsky/layout/LegacyActionBar$1;
.super Ljava/lang/Object;
.source "LegacyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/LegacyActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LegacyActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mSideDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mSideDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->getDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->isDrawerIndicatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mSideDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->toggleSideDrawer()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar$1;->this$0:Lcom/google/android/finsky/layout/LegacyActionBar;

    # getter for: Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/finsky/layout/LegacyActionBar;->access$200(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
