.class public Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;
.super Lcom/google/android/finsky/fragments/SidecarFragment;
.source "RedeemCodeSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$1;,
        Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;
    }
.end annotation


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mErrorHtml:Ljava/lang/String;

.field private mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

.field private final mRedemptionListener:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;

.field private mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;-><init>(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRedemptionListener:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;

    new-instance v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;)Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mErrorHtml:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object p1
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RedeemCodeSidecar.redemption_context"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private sendRedemptionRequest()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->hasToken:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iget-object v1, v1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-boolean v5, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    :goto_0
    iput-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iput-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mVolleyError:Lcom/android/volley/VolleyError;

    iput-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mErrorHtml:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRedemptionListener:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;

    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRedemptionListener:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar$RedemptionListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->redeemCode(Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setState(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-boolean v4, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasToken:Z

    goto :goto_0
.end method


# virtual methods
.method public getAddressChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid state: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    goto :goto_0
.end method

.method public getErrorHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mErrorHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getRedemptionSuccess()Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid state: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->redemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    goto :goto_0
.end method

.method public getUserConfirmationChallenge()Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid state: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;->userConfirmationChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    goto :goto_0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-eqz p1, :cond_0

    const-string v1, "RedeemCodeSidecar.request"

    invoke-static {p1, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    const-string v1, "RedeemCodeSidecar.last_redeem_code_response"

    invoke-static {p1, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    iput-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    const-string v1, "RedeemCodeSidecar.error_html"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mErrorHtml:Ljava/lang/String;

    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "RedeemCodeSidecar.redemption_context"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->redemptionContext:I

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasRedemptionContext:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    if-eqz v0, :cond_0

    const-string v0, "RedeemCodeSidecar.request"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    if-eqz v0, :cond_1

    const-string v0, "RedeemCodeSidecar.last_redeem_code_response"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mLastRedeemCodeResponse:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string v0, "RedeemCodeSidecar.error_html"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mErrorHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public redeem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-object p1, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->sendRedemptionRequest()V

    return-void
.end method

.method public respondWithAddress(Lcom/google/android/finsky/protos/BillingAddress$Address;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid state: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-object p1, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->address:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-object p2, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->addressCheckedCheckboxId:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->sendRedemptionRequest()V

    goto :goto_0
.end method

.method public respondWithConfirmation()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid state: %d"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->mRequest:Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/PromoCode$RedeemCodeRequest;->hasUserConfirmation:Z

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->sendRedemptionRequest()V

    goto :goto_0
.end method
