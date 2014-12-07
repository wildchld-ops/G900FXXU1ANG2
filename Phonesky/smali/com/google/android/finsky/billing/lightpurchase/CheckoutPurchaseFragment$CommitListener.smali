.class Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;
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
    name = "CommitListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .param p2    # Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;-><init>(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;->serverLogsCookie:[B

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mServerLogsCookie:[B
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$602(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;[B)[B

    iget-object v9, p1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;->purchaseStatus:Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/16 v1, 0x131

    iget v2, v9, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->statusCode:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCommitServerLatencyMs()J
    invoke-static {v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getTimeElapsedSinceCommitMs()J
    invoke-static {v5}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1600(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)J

    move-result-wide v5

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->log(IIJJ)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;IIJJ)V

    iget-object v0, p1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;->appDeliveryData:Lcom/google/android/finsky/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    invoke-static {v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    invoke-static {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    move-result-object v2

    iget v2, v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appVersionCode:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1800(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    invoke-static {v4}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->externalReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mPreparePurchaseParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    invoke-static {v5}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1700(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->appContinueUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # getter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCart:Lcom/google/android/finsky/protos/Purchase$ClientCart;
    invoke-static {v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;)Lcom/google/android/finsky/protos/Purchase$ClientCart;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/finsky/protos/Purchase$ClientCart;->title:Ljava/lang/String;

    const-string v8, "single_install"

    invoke-interface/range {v0 .. v8}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;->libraryUpdate:[Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    const-string v2, "CheckoutPurchaseFragment.commit"

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->handleLibraryUpdates([Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1900(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;[Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    iget v0, v9, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->statusCode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown purchase status: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v9, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;-><init>(ILjava/lang/String;)V

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v10, v11}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2500(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/4 v1, 0x4

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v10, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2000(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;->challenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCompleteChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/4 v1, 0x6

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v1, v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2200(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iget v2, v9, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->permissionError:I

    iget-object v3, v9, Lcom/google/android/finsky/protos/Purchase$PurchaseStatus;->errorMessageHtml:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;-><init>(ILjava/lang/String;)V

    # setter for: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->mCheckoutPurchaseError:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$1102(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v10, v11}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2300(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->this$0:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/4 v1, 0x2

    # invokes: Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setState(II)V
    invoke-static {v0, v1, v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->access$2400(Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;II)V

    goto :goto_0

    nop

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

    check-cast p1, Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CommitListener;->onResponse(Lcom/google/android/finsky/protos/Purchase$CommitPurchaseResponse;)V

    return-void
.end method
