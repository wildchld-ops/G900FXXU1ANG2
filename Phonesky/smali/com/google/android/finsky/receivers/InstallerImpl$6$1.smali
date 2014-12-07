.class Lcom/google/android/finsky/receivers/InstallerImpl$6$1;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl$6;->packageReleased(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/receivers/InstallerImpl$6;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl$6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$6;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$6;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerImpl$6;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    # getter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$000(Lcom/google/android/finsky/receivers/InstallerImpl;)Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->invalidate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$6;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerImpl$6;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$6$1;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    # invokes: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    return-void
.end method
