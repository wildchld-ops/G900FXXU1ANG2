.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;
.source "AddDcb2Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected getBillingFlow()Lcom/google/android/finsky/billing/BillingFlow;
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/api/DfeApi;)V

    return-object v1
.end method

.method protected getBillingFlowFragment()Lcom/google/android/finsky/billing/BillingFlowFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x348

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    return-void
.end method
