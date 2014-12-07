.class Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->initPackagesStore(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v0, v7, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    invoke-static {v7}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$500(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    # invokes: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->convertEntryToPackageStatus(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;
    invoke-static {v8, v0, v5, v7}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$600(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackagesStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    invoke-static {v7}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$500(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->this$1:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    # getter for: Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mPackageStatusMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->access$700(Lcom/google/android/finsky/services/RestoreService$RestoreTracker;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-void
.end method
