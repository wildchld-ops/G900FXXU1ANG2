.class public Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;
.super Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;
.source "CompleteDcb3FlowFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/accounts/Account;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;
    .locals 4
    .param p0    # Landroid/accounts/Account;
    .param p1    # Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CompleteDcb3Flow.account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "CompleteDcb3Flow.instrument"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected getLegacyPurchaseFlow()Lcom/google/android/finsky/billing/BillingFlow;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "CompleteDcb3Flow.account"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CompleteDcb3Flow.instrument"

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-static {p0, p0, v3, v2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Util;->getCompletePurchaseFlow(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v4

    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;->startOrResumeLegacyFlow(Landroid/os/Bundle;)V

    return-void
.end method
