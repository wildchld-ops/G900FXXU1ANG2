.class Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateNormal;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

.field final synthetic val$item:Lcom/android/launcher2/AppItem;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    iget-boolean v0, v0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.MenuAppsGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;->val$item:Lcom/android/launcher2/AppItem;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method
