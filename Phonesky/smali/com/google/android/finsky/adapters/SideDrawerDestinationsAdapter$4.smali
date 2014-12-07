.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$4;
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

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$4;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$4;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    const/16 v1, 0x6c

    # invokes: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->logMenuClickEvent(I)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$400(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;I)V

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$4;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    # getter for: Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->access$300(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyWishlist()V

    return-void
.end method
