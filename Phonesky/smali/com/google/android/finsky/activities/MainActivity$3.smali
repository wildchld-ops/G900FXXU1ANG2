.class Lcom/google/android/finsky/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # invokes: Lcom/google/android/finsky/activities/MainActivity;->hideErrorMessage()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$200(Lcom/google/android/finsky/activities/MainActivity;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    # getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method
