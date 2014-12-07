.class Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2$1;
.super Ljava/lang/Object;
.source "CompleteDcb2FlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2$1;->this$1:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2$1;->this$1:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2$1;->this$1:Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment$2;->val$savedInstanceState:Landroid/os/Bundle;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->onBillingInitialized(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->access$100(Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;Landroid/os/Bundle;)V

    return-void
.end method
