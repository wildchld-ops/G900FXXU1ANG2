.class Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->initializeDcb(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;->this$0:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mDcbInitialized:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->access$102(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;Z)Z

    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DCB initialized."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
