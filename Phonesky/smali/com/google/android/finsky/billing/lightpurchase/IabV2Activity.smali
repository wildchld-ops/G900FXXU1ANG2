.class public Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;
.super Lcom/google/android/finsky/billing/lightpurchase/IabActivity;
.source "IabV2Activity.java"


# instance fields
.field private mRequestId:J

.field private mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;-><init>()V

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    return-void
.end method

.method public static createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;J)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/accounts/Account;
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    .param p2    # J

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LightIabV2Activity.requestId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private sendResponseToCaller()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v0, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->iabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mRequestId:J

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;)Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/32 v3, 0x1d4c0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->setMarketAlarm(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getResponseCodeForAlreadyOwned()Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    return-object v0
.end method

.method protected handleAccessRestriction()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->setResult(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->sendResponseToCaller()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LightIabV2Activity.requestId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mRequestId:J

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onFinish(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->getResponseCode(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->mResponseCode:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->onFinish(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabV2Activity;->sendResponseToCaller()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/IabActivity;->onStop()V

    return-void
.end method
