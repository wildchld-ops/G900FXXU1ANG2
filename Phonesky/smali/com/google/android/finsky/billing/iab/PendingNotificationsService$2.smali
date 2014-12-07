.class Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;
.super Ljava/lang/Object;
.source "PendingNotificationsService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->handleAlarm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

.field final synthetic val$account:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/PendingNotificationsService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "CheckForPendingNotifications failed: error=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->val$account:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->rescheduleMarketAlarm(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/PendingNotificationsService$2;->this$0:Lcom/google/android/finsky/billing/iab/PendingNotificationsService;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->stopSelf()V

    return-void
.end method
