.class Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;
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
    name = "BillingProfileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$900(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v1

    # setter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$902(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;I)I

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->requestBillingProfile()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getBillingProfile()Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    move-result-object v1

    # invokes: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->handleSuccess(Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1000(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # invokes: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->handleError()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$1100(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
