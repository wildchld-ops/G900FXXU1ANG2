.class Lcom/google/android/finsky/layout/play/PlayDrawerLayout$4;
.super Ljava/lang/Object;
.source "PlayDrawerLayout.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->configure(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$4;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$4;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mDrawerToggle:Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$300(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$4;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    # getter for: Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->access$100(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->isTopLevelSideDrawerDestination(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$PlayActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    return-void
.end method
