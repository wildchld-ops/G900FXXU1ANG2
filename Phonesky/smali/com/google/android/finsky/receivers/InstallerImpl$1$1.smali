.class Lcom/google/android/finsky/receivers/InstallerImpl$1$1;
.super Ljava/lang/Object;
.source "InstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerImpl$1;->onPostExecute(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/receivers/InstallerImpl$1;

.field final synthetic val$runningDownloads:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerImpl$1;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$1;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->val$runningDownloads:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$1;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->val$runningDownloads:Ljava/util/Collection;

    # invokes: Lcom/google/android/finsky/receivers/InstallerImpl;->recoverRunningDownloads(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$300(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$1;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    # setter for: Lcom/google/android/finsky/receivers/InstallerImpl;->mRunning:Z
    invoke-static {v0, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$402(Lcom/google/android/finsky/receivers/InstallerImpl;Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$1;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->this$0:Lcom/google/android/finsky/receivers/InstallerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/finsky/receivers/InstallerImpl;->kick(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerImpl;->access$500(Lcom/google/android/finsky/receivers/InstallerImpl;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerImpl$1$1;->this$1:Lcom/google/android/finsky/receivers/InstallerImpl$1;

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerImpl$1;->val$afterStartedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
