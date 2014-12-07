.class Lcom/android/launcher2/LauncherModel$13$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$13;

.field final synthetic val$appWidgets:Ljava/util/List;

.field final synthetic val$homeItems:Ljava/util/List;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;

.field final synthetic val$samsungWidgets:Ljava/util/List;

.field final synthetic val$surfaceWidgets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$13;Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$homeItems:Ljava/util/List;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$appWidgets:Ljava/util/List;

    iput-object p5, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$samsungWidgets:Ljava/util/List;

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$surfaceWidgets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$3300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$homeItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iget v2, v2, Lcom/android/launcher2/LauncherModel$13;->val$CPType:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeShortcuts_CP(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$appWidgets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iget v2, v2, Lcom/android/launcher2/LauncherModel$13;->val$CPType:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeAppWidget_CP(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$samsungWidgets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iget v2, v2, Lcom/android/launcher2/LauncherModel$13;->val$CPType:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeSamsungWidget_CP(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13$1;->val$surfaceWidgets:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$13$1;->this$1:Lcom/android/launcher2/LauncherModel$13;

    iget v2, v2, Lcom/android/launcher2/LauncherModel$13;->val$CPType:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeSurfaceWidget_CP(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
