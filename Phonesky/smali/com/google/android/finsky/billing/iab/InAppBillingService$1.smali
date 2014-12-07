.class Lcom/google/android/finsky/billing/iab/InAppBillingService$1;
.super Ljava/lang/Object;
.source "InAppBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

.field final synthetic val$response:Landroid/os/Bundle;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$response:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;)V
    .locals 9

    iget-object v1, p1, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;->entry:[Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    iget-object v6, v3, Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    # invokes: Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDetailsJson(Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->access$900(Lcom/google/android/finsky/billing/iab/InAppBillingService;Lcom/google/android/finsky/protos/Details$BulkDetailsEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$response:Landroid/os/Bundle;

    const-string v7, "DETAILS_LIST"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$response:Landroid/os/Bundle;

    const-string v7, "RESPONSE_CODE"

    sget-object v8, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;->onResponse(Lcom/google/android/finsky/protos/Details$BulkDetailsResponse;)V

    return-void
.end method
