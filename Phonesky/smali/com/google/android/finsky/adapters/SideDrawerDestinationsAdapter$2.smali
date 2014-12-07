.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$2;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$100(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$2;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$000(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
