.class Lcom/google/android/finsky/services/RestoreService$2;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$aid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iput-object p2, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$aid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->volleyErrorToInstallerError(Lcom/android/volley/VolleyError;)I
    invoke-static {v4, p1}, Lcom/google/android/finsky/services/RestoreService;->access$2600(Lcom/google/android/finsky/services/RestoreService;Lcom/android/volley/VolleyError;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v4}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$accountName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finishAccount(Ljava/lang/String;ZI)V

    const-string v4, "Error while getting list of applications to restore from server: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # getter for: Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    invoke-static {v4}, Lcom/google/android/finsky/services/RestoreService;->access$1100(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$accountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->tryAgainOrDeleteAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$aid:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/services/RestoreService$2;->val$accountName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->getRestoreIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v4, v5, v6}, Lcom/google/android/finsky/services/RestoreService;->access$2700(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    sget-object v4, Lcom/google/android/finsky/config/G;->appRestoreRetryFetchListHoldoffMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    # invokes: Lcom/google/android/finsky/services/RestoreService;->jitterDelay(J)J
    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/services/RestoreService;->access$1300(Lcom/google/android/finsky/services/RestoreService;J)J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService$2;->this$0:Lcom/google/android/finsky/services/RestoreService;

    # invokes: Lcom/google/android/finsky/services/RestoreService;->setAlarm(Landroid/content/Intent;J)J
    invoke-static {v4, v3, v0, v1}, Lcom/google/android/finsky/services/RestoreService;->access$1400(Lcom/google/android/finsky/services/RestoreService;Landroid/content/Intent;J)J

    :cond_0
    return-void
.end method
