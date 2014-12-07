.class public abstract Lcom/google/android/finsky/billing/lightpurchase/IabActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;
.source "IabActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getResponseCode(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hasSucceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getError()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->getResponseCodeFromError(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0
.end method

.method protected abstract getResponseCodeForAlreadyOwned()Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
.end method

.method protected getResponseCodeFromError(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorSubtype:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "Unexpected PurchasePermissionResponse: %d"

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorSubtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->getResponseCodeForAlreadyOwned()Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :sswitch_4
    const-string v0, "Unexpected INSTALL_OK response."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorType:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->getResponseCodeForAlreadyOwned()Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;->errorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
