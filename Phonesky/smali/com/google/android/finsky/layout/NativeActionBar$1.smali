.class Lcom/google/android/finsky/layout/NativeActionBar$1;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/NativeActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/NativeActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar$1;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    # getter for: Lcom/google/android/finsky/layout/NativeActionBar;->sSawFirstBackstackChange:Z
    invoke-static {}, Lcom/google/android/finsky/layout/NativeActionBar;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar$1;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    # invokes: Lcom/google/android/finsky/layout/NativeActionBar;->clearSearchIfNecessary()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/NativeActionBar;->access$100(Lcom/google/android/finsky/layout/NativeActionBar;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar$1;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    # invokes: Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/NativeActionBar;->access$200(Lcom/google/android/finsky/layout/NativeActionBar;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    # setter for: Lcom/google/android/finsky/layout/NativeActionBar;->sSawFirstBackstackChange:Z
    invoke-static {v0}, Lcom/google/android/finsky/layout/NativeActionBar;->access$002(Z)Z

    goto :goto_0
.end method
