.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;
.source "AddDcb3Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AddDcb3Instrument.instrument_status"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected getBillingFlow()Lcom/google/android/finsky/billing/BillingFlow;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "AddDcb3Instrument.instrument_status"

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-direct {v2, p0, p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V

    return-object v2
.end method

.method protected getBillingFlowFragment()Lcom/google/android/finsky/billing/BillingFlowFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x349

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;->mSavedFlowState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;->startOrResumeFlow(Landroid/os/Bundle;)V

    return-void
.end method
