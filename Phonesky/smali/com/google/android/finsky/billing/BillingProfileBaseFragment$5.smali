.class Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;
.super Ljava/lang/Object;
.source "BillingProfileBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getDcbAction(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

.field final synthetic val$option:Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;->val$option:Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x32b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;->this$0:Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;->val$option:Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    # invokes: Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->addDcb3(Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->access$700(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V

    return-void
.end method