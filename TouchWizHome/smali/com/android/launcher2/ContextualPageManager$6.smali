.class Lcom/android/launcher2/ContextualPageManager$6;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ContextualPageManager;->moveToNextAndRemoveAfter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ContextualPageManager;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/ContextualPageManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iput p2, p0, Lcom/android/launcher2/ContextualPageManager$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    iget v1, p0, Lcom/android/launcher2/ContextualPageManager$6;->val$index:I

    # invokes: Lcom/android/launcher2/ContextualPageManager;->removePage(I)V
    invoke-static {v0, v1}, Lcom/android/launcher2/ContextualPageManager;->access$200(Lcom/android/launcher2/ContextualPageManager;I)V

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    # getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$000(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setLastPageNotify(I)V

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    # getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$000(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ContextualPageManager$6;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->isTopScreenForCP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    # getter for: Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$300(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager$6;->this$0:Lcom/android/launcher2/ContextualPageManager;

    # getter for: Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/ContextualPageManager;->access$000(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    :cond_1
    return-void
.end method
