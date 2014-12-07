.class Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$1;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$1;->this$0:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->onInitialized()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->access$000(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V

    return-void
.end method
