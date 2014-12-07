.class final Lcom/android/launcher2/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/launcher2/LauncherApplication;

.field final synthetic val$newPositions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$6;->val$app:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$6;->val$newPositions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$6;->val$app:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$6;->val$newPositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherProvider;->moveFavorites(Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$6;->val$newPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    if-nez v2, :cond_1

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to move an item that is not in sItemsIdMap. Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v3, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :cond_2
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method
