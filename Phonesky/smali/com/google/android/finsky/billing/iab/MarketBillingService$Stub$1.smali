.class Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;
.super Ljava/lang/Object;
.source "MarketBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->getPurchaseInformation(ILjava/lang/String;J[Ljava/lang/String;)J
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
        "Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$requestId:J


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->val$packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->val$requestId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse:Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;

    iget-object v2, v2, Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;->signedData:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;->signedResponse:Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;

    iget-object v3, v3, Lcom/google/android/finsky/protos/VendingProtos$SignedDataProto;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendPurchaseStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->val$packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->val$requestId:J

    iget-object v4, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v4, v4, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v5, p1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;->purchaseResult:Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;

    # invokes: Lcom/google/android/finsky/billing/iab/MarketBillingService;->purchaseResultToResponseCode(Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    invoke-static {v4, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->access$200(Lcom/google/android/finsky/billing/iab/MarketBillingService;Lcom/google/android/finsky/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->sendResponseCode(Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v0, v0, Lcom/google/android/finsky/billing/iab/MarketBillingService;->mNotifier:Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->this$1:Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;

    iget-object v1, v1, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub;->this$0:Lcom/google/android/finsky/billing/iab/MarketBillingService;

    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$BillingNotifier;->showStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/MarketBillingService$Stub$1;->onResponse(Lcom/google/android/finsky/protos/VendingProtos$InAppPurchaseInformationResponseProto;)V

    return-void
.end method
