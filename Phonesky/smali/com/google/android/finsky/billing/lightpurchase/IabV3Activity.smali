.class public Lcom/google/android/finsky/billing/lightpurchase/IabV3Activity;
.super Lcom/google/android/finsky/billing/lightpurchase/IabActivity;
.source "IabV3Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/accounts/Account;
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/IabV3Activity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected getResponseCodeForAlreadyOwned()Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_ALREADY_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    return-object v0
.end method

.method protected handleAccessRestriction()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "RESPONSE_CODE"

    sget-object v3, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/IabV3Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected onFinish(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getCheckoutPurchaseFragment()Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/IabV3Activity;->getResponseCode(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getExtraPurchaseData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v7, "inapp_signed_purchase_data"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "inapp_purchase_data_signature"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    const-string v7, "INAPP_PURCHASE_DATA"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v7, "RESPONSE_CODE"

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->ordinal()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "purchaseResponse"

    const-string v8, "responseCode: %d purchase data: %s  signature: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-ne v4, v7, :cond_1

    const/4 v6, -0x1

    :cond_1
    invoke-virtual {p0, v6, v1}, Lcom/google/android/finsky/billing/lightpurchase/IabV3Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
