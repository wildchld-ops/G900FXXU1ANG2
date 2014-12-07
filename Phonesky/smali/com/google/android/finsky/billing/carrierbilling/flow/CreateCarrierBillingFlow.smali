.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CreateCarrierBillingFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

.field private mAddFragmentShown:Z

.field private mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

.field private mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

.field private mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

.field private mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

.field private mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

.field private mSavingScreenShown:Z

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mTitle:Ljava/lang/String;

.field private mTosVersion:Ljava/lang/String;

.field private mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowContext;
    .param p2    # Lcom/google/android/finsky/billing/BillingFlowListener;
    .param p3    # Lcom/google/android/finsky/api/DfeApi;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowContext;
    .param p2    # Lcom/google/android/finsky/billing/BillingFlowListener;
    .param p3    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .param p4    # Lcom/google/android/finsky/api/DfeApi;

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    sget-object v2, Lcom/google/android/finsky/config/G;->enableDcbReducedBillingAddress:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :goto_0
    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAccountName:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f090070

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTitle:Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    goto :goto_0

    :cond_3
    const-string v2, "No carrier name available in params."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->continueResume(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
    .param p1    # Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private continueResume(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v0, "add_fragment_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragmentShown:Z

    const-string v0, "user_provided_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const-string v0, "saving_dialog_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V

    const-string v0, "error_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    :cond_3
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateCarrierBillingFlow$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    goto :goto_0

    :pswitch_0
    const-string v0, "add_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "edit_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createCarrierBillingInstrument()Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAccountType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->accountType:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasAccountType:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->currencyCode:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasCurrencyCode:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTransactionLimit()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->transactionLimit:J

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasTransactionLimit:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->subscriberIdentifier:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasSubscriberIdentifier:Z

    :cond_0
    new-instance v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;->value:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;->hasValue:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;->expiration:J

    iput-boolean v5, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;->hasExpiration:Z

    :cond_1
    iput-object v0, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->credentials:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingCredentials;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    :cond_2
    :goto_0
    iput-object v1, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->toProto()Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->encryptedSubscriberInfo:Lcom/google/android/finsky/protos/EncryptedSubscriberInfo;

    goto :goto_0
.end method

.method private getInvalidEntries([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Ljava/util/ArrayList;
    .locals 10
    .param p1    # [Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    iget v4, v1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v6, "InputValidationError that can\'t be edited: type=%d, message=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
    .param p2    # Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private getRetriableErrorList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget v1, v1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-object v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getInvalidEntries([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideEditFragment()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    :cond_0
    return-void
.end method

.method private hideProgress()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    :cond_0
    return-void
.end method

.method private hideTosFragment()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    :cond_0
    return-void
.end method

.method private isSnippetValid()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubscriberInfoValid()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logEditAddress(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method private logError(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;

    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method private logTosAndAddress(ZZZ)V
    .locals 0
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    return-void
.end method

.method private onEditCancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    goto :goto_0
.end method

.method private onEditSuccess(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    return-void
.end method

.method private setAddressAvailability()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->isSubscriberInfoValid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->isSnippetValid()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    goto :goto_0
.end method

.method private shouldShowTos()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->showCarrierTos()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private showEditAddressFragment(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->newInstance(Ljava/lang/String;Z)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private showGenericError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f09007f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showNetworkError(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Lcom/android/volley/VolleyError;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method private showProgress()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f090065

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    :cond_0
    return-void
.end method

.method private showTosFragment()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->shouldShowTos()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showAddFragment(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    :goto_1
    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    :goto_2
    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_2
.end method


# virtual methods
.method public back()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideEditFragment()V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->onEditCancel()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    return-void
.end method

.method initParams()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Cannot run this BillingFlow since params or provisioning is null."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->fail(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->setAddressAvailability()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showProgress()V

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterProvisioning;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AfterError;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getProvisioning(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    goto :goto_0

    :cond_2
    const-string v0, "Invalid error code."

    const-string v1, "UNKNOWN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideEditFragment()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->onEditSuccess(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->onEditCancel()V

    goto :goto_0
.end method

.method public onErrorDismiss(Z)V
    .locals 1
    .param p1    # Z

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->cancel()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method performNext()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateCarrierBillingFlow$State:[I

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "Invalid Dcb state."

    const-string v2, "UNKNOWN"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->shouldShowTos()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    :goto_1
    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showTosFragment()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressAvailable:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;->NO_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$AddressAvailable;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showTosFragment()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showProgress()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performRequest()V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showTosFragment()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget v1, v1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performRequest()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->getRetriableErrorList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "INVALID_INPUT"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logError(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "Could not add carrier billing instrument."

    const-string v2, "UNKNOWN"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected performRequest()V
    .locals 4

    new-instance v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->createCarrierBillingInstrument()Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$3;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$3;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$4;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->initParams()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "add_fragment_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragmentShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "saving_dialog_fragment"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mSavingScreenShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_1

    const-string v0, "user_provided_address"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$5;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateCarrierBillingFlow$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showAddFragment(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-ne p1, v0, :cond_3

    :cond_0
    move v8, v10

    :goto_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-ne p1, v0, :cond_4

    :cond_1
    move v6, v10

    :goto_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    if-ne p1, v0, :cond_5

    :cond_2
    move v7, v10

    :goto_2
    invoke-direct {p0, v8, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logTosAndAddress(ZZZ)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideTosFragment()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTosVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mProvisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAccountName:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    iput-boolean v10, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragmentShown:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v9}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    return-void

    :cond_3
    move v8, v9

    goto :goto_0

    :cond_4
    move v6, v9

    goto :goto_1

    :cond_5
    move v7, v9

    goto :goto_2
.end method

.method showEditFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->hideTosFragment()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->logEditAddress(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0, v2, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->mTitle:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->initParams()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
