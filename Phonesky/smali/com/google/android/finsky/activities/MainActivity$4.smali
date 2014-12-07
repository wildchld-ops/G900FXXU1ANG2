.class Lcom/google/android/finsky/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->onReady(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/MainActivity$4;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # getter for: Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$300(Lcom/google/android/finsky/activities/MainActivity;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # getter for: Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/google/android/finsky/activities/MainActivity;->access$300(Lcom/google/android/finsky/activities/MainActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->deserialize(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # getter for: Lcom/google/android/finsky/activities/MainActivity;->mDrawerLayout:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$500(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v2}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->refresh(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->access$302(Lcom/google/android/finsky/activities/MainActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # invokes: Lcom/google/android/finsky/activities/MainActivity;->initializeBilling()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$600(Lcom/google/android/finsky/activities/MainActivity;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->val$shouldHandleIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$4;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # invokes: Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$400(Lcom/google/android/finsky/activities/MainActivity;)V

    goto :goto_0
.end method
