.class Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;
.super Ljava/lang/Object;
.source "MultiStepFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mButtonBarVisible:Z
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->access$300(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onContinueButtonClicked()V

    :cond_0
    return-void
.end method
