.class Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;
.super Ljava/lang/Object;
.source "RedeemCodeSidecar.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RedemptionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;
    .param p2    # Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$1;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;-><init>(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    # setter for: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mVolleyError:Lcom/android/volley/VolleyError;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$902(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    const/4 v1, 0x3

    const/4 v2, 0x1

    # invokes: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$1000(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    # setter for: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$102(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;)Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iget v0, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Received error/unknown result: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->result:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    iget-object v1, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->errorMessageHtml:Ljava/lang/String;

    # setter for: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mErrorHtml:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$702(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    # invokes: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V
    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$800(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    # getter for: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$200(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    iget-object v2, v2, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    const-string v3, "redeem-code-sidecar"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    const/4 v1, 0x2

    # invokes: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V
    invoke-static {v0, v1, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$300(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-nez v0, :cond_1

    const-string v0, "ADDRESS_REQUIRED/INVALID_ADDRESS without address challenge."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    # invokes: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V
    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$400(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    const/4 v1, 0x4

    # invokes: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V
    invoke-static {v0, v1, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$500(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    if-nez v0, :cond_2

    const-string v0, "REQUIRES_USER_CONFIRMATION without confirmation challenge."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->this$0:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    const/4 v1, 0x5

    # invokes: Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V
    invoke-static {v0, v1, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->access$600(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;->onResponse(Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;)V

    return-void
.end method
