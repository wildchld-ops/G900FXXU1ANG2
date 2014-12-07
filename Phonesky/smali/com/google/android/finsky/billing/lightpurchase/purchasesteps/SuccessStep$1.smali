.class Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep$1;
.super Ljava/lang/Object;
.source "SuccessStep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
    invoke-static {v1}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;->access$000(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;)Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->finish()V

    :cond_0
    return-void
.end method
