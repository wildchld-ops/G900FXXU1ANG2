.class Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;
.super Ljava/lang/Object;
.source "MultiStepFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
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

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    if-nez v0, :cond_0

    const-string v0, "Current fragment null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeOutProgressBar()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->access$000(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->fadeInFragment()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->access$100(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->syncContinueButton(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->access$200(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto :goto_0
.end method
