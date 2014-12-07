.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$3;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->createContent()V
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

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$300(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$3;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$200(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method
