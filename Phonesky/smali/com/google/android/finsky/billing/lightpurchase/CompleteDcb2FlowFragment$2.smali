.class Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;
.super Ljava/lang/Object;
.source "CompleteDcb2FlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->initializeBilling(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    return-void
.end method
