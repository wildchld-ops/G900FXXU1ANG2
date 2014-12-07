.class public Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;
.super Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;
.source "CompleteDcb2FlowFragment.java"


# instance fields
.field private mAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->initializeBilling(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->onBillingInitialized(Landroid/os/Bundle;)V

    return-void
.end method

.method private fetchTocAndInitializeBilling(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Loading TOC..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V

    invoke-static {v0, v2, v1}, Lcom/google/android/finsky/utils/GetTocHelper;->getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    return-void
.end method

.method private initializeBilling(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeStorageAndParams(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onBillingInitialized(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    if-nez v2, :cond_0

    const v4, 0x7f090095

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->fail(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    const v4, 0x7f0900a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->fail(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->startOrResumeLegacyFlow(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected getLegacyPurchaseFlow()Lcom/google/android/finsky/billing/BillingFlow;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->mAccountName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Util;->getCompletePurchaseFlow(Ljava/lang/String;Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->mAccountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->fetchTocAndInitializeBilling(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->initializeBilling(Landroid/os/Bundle;)V

    goto :goto_0
.end method
