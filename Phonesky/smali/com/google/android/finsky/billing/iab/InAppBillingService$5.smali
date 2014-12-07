.class Lcom/google/android/finsky/billing/iab/InAppBillingService$5;
.super Ljava/lang/Object;
.source "InAppBillingService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingService;->performIabPromoCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
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
        "Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

.field final synthetic val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;->this$0:Lcom/google/android/finsky/billing/iab/InAppBillingService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    iput-object p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;->val$responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;->eligible:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_NOT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService$5;->onResponse(Lcom/google/android/finsky/protos/BuyInstruments$CheckIabPromoResponse;)V

    return-void
.end method
