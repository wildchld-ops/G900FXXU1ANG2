.class Lcom/google/android/finsky/billing/iab/InAppBillingService$2;
.super Ljava/lang/Object;
.source "InAppBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

.field final synthetic val$response:Landroid/os/Bundle;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;->val$response:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;->val$response:Landroid/os/Bundle;

    const-string v1, "RESPONSE_CODE"

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
