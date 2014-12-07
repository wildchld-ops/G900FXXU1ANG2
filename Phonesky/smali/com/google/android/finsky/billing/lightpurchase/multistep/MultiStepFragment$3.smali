.class Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$3;
.super Ljava/lang/Object;
.source "MultiStepFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->slideFragmentOut()V
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

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$3;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment$3;->this$0:Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->mFragmentContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->access$400(Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
