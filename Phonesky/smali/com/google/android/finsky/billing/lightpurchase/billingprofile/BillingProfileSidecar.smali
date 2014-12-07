.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;
.super Lcom/google/android/finsky/fragments/SidecarFragment;
.source "BillingProfileSidecar.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/SidecarFragment;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mBillingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mErrorMessageHtml:Ljava/lang/String;

.field private mExtraPostParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchaseContextToken:Ljava/lang/String;

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "BillingProfileSidecar.account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "BillingProfileSidecar.purchaseContextToken"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getBillingProfile()Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mBillingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;->billingProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    return-object v0
.end method

.method public getErrorMessageHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mErrorMessageHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BillingProfileSidecar.account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BillingProfileSidecar.purchaseContextToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mPurchaseContextToken:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mVolleyError:Lcom/android/volley/VolleyError;

    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setState(II)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x3

    iget v0, p1, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;->result:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mErrorMessageHtml:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setState(II)V

    :goto_0
    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mBillingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setState(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;->userMessageHtml:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mErrorMessageHtml:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setState(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->onResponse(Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mBillingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    if-eqz v0, :cond_0

    const-string v0, "BillingProfileSidecar.billingProfileResponse"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mBillingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "BillingProfileSidecar.billingProfileResponse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BillingProfileSidecar.billingProfileResponse"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mBillingProfileResponse:Lcom/google/android/finsky/protos/BuyInstruments$BillingProfileResponse;

    :cond_0
    return-void
.end method

.method public start(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setState(II)V

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mExtraPostParams:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mPurchaseContextToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->mExtraPostParams:Ljava/util/Map;

    invoke-interface {v0, v1, v2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->billingProfile(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method
