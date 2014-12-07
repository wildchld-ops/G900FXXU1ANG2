.class Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;
.super Ljava/lang/Object;
.source "BillingProfileBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->renderProfile()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    # getter for: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;
    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$200(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    goto :goto_0
.end method
