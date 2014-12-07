.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
.super Lcom/google/android/finsky/fragments/SidecarFragment;
.source "Dcb2ProvisioningSidecar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setState(II)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setState(II)V

    goto :goto_0
.end method


# virtual methods
.method public getCarrierName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProvisioned()Z
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setState(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;Landroid/os/Bundle;)V

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeStorageAndParams(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method
