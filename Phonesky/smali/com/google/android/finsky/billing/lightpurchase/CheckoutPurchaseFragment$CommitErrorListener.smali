.class Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;
.super Ljava/lang/Object;
.source "CheckoutPurchaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommitErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 8

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mVolleyError:Lcom/android/volley/VolleyError;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2602(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/16 v1, 0x131

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCommitServerLatencyMs()J
    invoke-static {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J

    move-result-wide v3

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getTimeElapsedSinceCommitMs()J
    invoke-static {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1600(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J

    move-result-wide v5

    move-object v2, p1

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->logVolleyError(ILcom/android/volley/VolleyError;JJ)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;ILcom/android/volley/VolleyError;JJ)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitErrorListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v7, v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    return-void
.end method
