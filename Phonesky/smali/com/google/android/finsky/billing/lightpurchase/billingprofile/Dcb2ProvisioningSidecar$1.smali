.class Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;
.super Ljava/lang/Object;
.source "Dcb2ProvisioningSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;->val$savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingProvisioning(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->updateState()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->access$000(Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;)V

    goto :goto_0
.end method
