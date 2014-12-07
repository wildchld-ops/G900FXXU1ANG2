.class Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;
.super Ljava/lang/Object;
.source "BillingProfileBaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/SidecarFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/BillingProfileBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierBillingProvisioningListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/BillingProfileBaseFragment;
    .param p2    # Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1302(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/ProgressDialogFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    :cond_0
    return-void
.end method

.method private removeFragment()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/fragments/SidecarFragment;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I
    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1200(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v3

    # setter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I
    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1202(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;I)I

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->hideProgressDialog()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    const v3, 0x7f0900a2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-static {v1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v3

    # setter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1302(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/ProgressDialogFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;
    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "BillingProfileFragment.carrierBillingProgressFragment"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->hideProgressDialog()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # invokes: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->addDcb2()V
    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1500(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    :goto_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->removeFragment()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    const v3, 0x7f0900a1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # invokes: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onDcbError(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1600(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->hideProgressDialog()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    const v4, 0x7f090095

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onDcbError(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1600(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;->removeFragment()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
