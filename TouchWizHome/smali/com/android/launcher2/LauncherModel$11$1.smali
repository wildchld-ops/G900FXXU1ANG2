.class Lcom/android/launcher2/LauncherModel$11$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$11;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$11;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$11$1;->this$1:Lcom/android/launcher2/LauncherModel$11;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11$1;->this$1:Lcom/android/launcher2/LauncherModel$11;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$11;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$3300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    const-string v1, "Launcher.Model"

    const-string v2, "dynamicCscToggleEasyMode: Line 1868"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$11$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "called bindModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
