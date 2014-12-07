.class Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;
.super Ljava/lang/Object;
.source "CheckoutPurchaseFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p2    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    invoke-static {v0, v10}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$402(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;
    invoke-static {v0, v10}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$502(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/Purchase$ClientCart;)Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;->serverLogsCookie:[B

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$602(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;[B)[B

    iget-object v7, p1, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;->purchaseStatus:Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/16 v1, 0x12f

    iget v2, v7, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->statusCode:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getPrepareServerLatencyMs()J
    invoke-static {v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getTimeElapsedSincePrepareMs()J
    invoke-static {v5}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$800(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J

    move-result-wide v5

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->log(IIJJ)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;IIJJ)V

    iget v0, v7, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->statusCode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown status returned from server: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v7, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    invoke-direct {v1, v8, v10}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;-><init>(ILjava/lang/String;)V

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v11, v9}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1400(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPrepareChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$402(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v9, v8}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1000(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iget v2, v7, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->permissionError:I

    iget-object v3, v7, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->errorMessageHtml:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;-><init>(ILjava/lang/String;)V

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v11, v9}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1200(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;->cart:Lcom/google/android/finsky/protos/Purchase$ClientCart;

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$502(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/Purchase$ClientCart;)Lcom/google/android/finsky/protos/Purchase$ClientCart;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/4 v1, 0x4

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v1, v8}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1300(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$PrepareListener;->onResponse(Lcom/google/android/finsky/protos/Purchase$PreparePurchaseResponse;)V

    return-void
.end method
