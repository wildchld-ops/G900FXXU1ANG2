.class Lcom/android/launcher2/LauncherModel$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->bindContextualPageItems(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$CPType:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    iput p2, p0, Lcom/android/launcher2/LauncherModel$13;->val$CPType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher.Model"

    const-string v1, "bindContextualPageItems : oldTaskStopped ! binding skip "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$1402(Lcom/android/launcher2/LauncherModel;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$3300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    # getter for: Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    # getter for: Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    # getter for: Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v7

    new-instance v0, Lcom/android/launcher2/LauncherModel$13$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel$13$1;-><init>(Lcom/android/launcher2/LauncherModel$13;Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
