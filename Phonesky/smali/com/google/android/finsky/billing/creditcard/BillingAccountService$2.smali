.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
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
        "Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$result:Landroid/os/Bundle;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$account:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    const/4 v5, 0x0

    iget-boolean v2, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->checkoutTokenRequired:Z

    if-eqz v2, :cond_0

    const-string v2, "Unexpected checkout_token_required."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    const/4 v4, -0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :cond_0
    iget-object v2, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer:[Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer:[Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;

    aget-object v3, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CheckPromoOffer$AvailablePromoOffer;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "available_offer_redemption_intent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;->redeemedOffer:Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;

    iget-object v1, v2, Lcom/google/android/finsky/protos/CheckPromoOffer$RedeemedPromoOffer;->descriptionHtml:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "redeemed_offer_message_html"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->val$result:Landroid/os/Bundle;

    const-string v3, "result_code"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;->onResponse(Lcom/google/android/finsky/protos/CheckPromoOffer$CheckPromoOfferResponse;)V

    return-void
.end method
