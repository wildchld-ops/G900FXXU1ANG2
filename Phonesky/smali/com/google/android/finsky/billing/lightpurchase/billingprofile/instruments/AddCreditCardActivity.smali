.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;
.source "AddCreditCardActivity.java"


# instance fields
.field private mAccountName:Ljava/lang/String;


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

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected getBillingFlow()Lcom/google/android/finsky/billing/BillingFlow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBillingFlowFragment()Lcom/google/android/finsky/billing/BillingFlowFragment;
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;->mAccountName:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x35c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;->mAccountName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;->mSavedFlowState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;->startOrResumeFlow(Landroid/os/Bundle;)V

    return-void
.end method
