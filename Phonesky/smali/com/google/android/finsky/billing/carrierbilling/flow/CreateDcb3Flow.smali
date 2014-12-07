.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CreateDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$3;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;"
    }
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

.field private mAddFragmentShown:Z

.field private mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

.field private mAssociationAddress:Ljava/lang/String;

.field private mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

.field private mAssociationPrefix:Ljava/lang/String;

.field private mAssociationRequired:Z

.field private mCarrierName:Ljava/lang/String;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mDcbTosUrl:Ljava/lang/String;

.field private mDcbTosVersion:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

.field private mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

.field private final mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mPiiTosUrl:Ljava/lang/String;

.field private mPiiTosVersion:Ljava/lang/String;

.field private mRetriableErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

.field private mTitle:Ljava/lang/String;

.field private mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

.field private mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowContext;
    .param p2    # Lcom/google/android/finsky/billing/BillingFlowListener;
    .param p3    # Lcom/google/android/finsky/api/DfeApi;
    .param p4    # Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowContext;
    .param p2    # Lcom/google/android/finsky/billing/BillingFlowListener;
    .param p3    # Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .param p4    # Lcom/google/android/finsky/api/DfeApi;
    .param p5    # Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, v6}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    sget-object v5, Lcom/google/android/finsky/config/G;->enableDcbReducedBillingAddress:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :goto_0
    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    :cond_0
    invoke-interface {p4}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-interface {p4}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    iget-object v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    if-eqz v5, :cond_1

    iget-object v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    iget-object v5, v5, Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;->userTokenRequestAddress:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    iget-object v5, v5, Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;->userTokenRequestMessage:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    :cond_1
    iget-boolean v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    if-eqz v5, :cond_5

    iget-object v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mCarrierName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    const v6, 0x7f090070

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mCarrierName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mTitle:Ljava/lang/String;

    :goto_1
    iget-object v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v5, :cond_3

    iget-object v1, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-object v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-eqz v5, :cond_2

    iget-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v5, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->url:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    :cond_2
    iget-object v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    if-eqz v5, :cond_3

    iget-object v4, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v5, v4, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->url:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosUrl:Ljava/lang/String;

    iget-object v5, v4, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    :cond_3
    iget-boolean v5, p5, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    iput-boolean v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationRequired:Z

    return-void

    :cond_4
    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    goto :goto_0

    :cond_5
    const-string v5, "No carrier name available in status."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
    .param p1    # Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->continueResume(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideVerifyAssociationDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
    .param p1    # Lcom/google/android/finsky/protos/BillingAddress$Address;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/billing/BillingUtils$AddressMode;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
    .param p1    # Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    return-object p1
.end method

.method private continueResume(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->finish()V

    :cond_1
    const-string v0, "add_fragment_shown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    const-string v0, "user_provided_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const-string v0, "dcb_tos_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dcb_tos_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    :cond_2
    const-string v0, "dcb_tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dcb_tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    :cond_3
    const-string v0, "pii_tos_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "pii_tos_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosUrl:Ljava/lang/String;

    :cond_4
    const-string v0, "pii_tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pii_tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    :cond_5
    const-string v0, "error_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    :cond_6
    const-string v0, "add_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    :cond_7
    const-string v0, "edit_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    :cond_8
    const-string v0, "verify_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-interface {v0, p1, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    :cond_9
    return-void
.end method

.method private createCarrierBillingInstrument()Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    new-instance v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v3}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;-><init>()V

    iput-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iput-boolean v5, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v3}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;-><init>()V

    iput-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->piiTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iput-boolean v5, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    :cond_1
    iput-object v0, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    new-instance v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddress(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    :goto_0
    iput-object v1, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    if-nez v3, :cond_3

    const-string v3, "No Subscriber address available."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iput-object v3, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    goto :goto_0
.end method

.method private hideEditFragment()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    :cond_0
    return-void
.end method

.method private hideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    :cond_0
    return-void
.end method

.method private hideTosFragment()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideFragment(Landroid/support/v4/app/Fragment;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    :cond_0
    return-void
.end method

.method private hideVerifyAssociationDialog()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    :cond_0
    return-void
.end method

.method private isSubscriberAddressValid(Lcom/google/android/finsky/protos/BillingAddress$Address;)Z
    .locals 5
    .param p1    # Lcom/google/android/finsky/protos/BillingAddress$Address;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/google/android/finsky/protos/BillingAddress$Address;->postalCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/finsky/protos/BillingAddress$Address;->city:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private logDcbAddError(ILjava/lang/String;)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x156

    move-object v3, v2

    move v4, p1

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    return-void
.end method

.method private logDcbAddError(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logDcbAddError(ILjava/lang/String;)V

    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-static {p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->newInstance(Ljava/lang/String;Z)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog$CarrierBillingErrorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    const-string v2, "error"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f090065

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->enableUi(Z)V

    :cond_0
    return-void
.end method

.method private showVerifyAssociationDialog()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    const-string v2, "verifying pin"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    return-void
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

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mCarrierName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Cannot run this BillingFlow since carrier name or DFE api is null."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->fail(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->setListener(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method public onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideTosFragment()V

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_0

    :cond_2
    const-string v0, "Invalid error code."

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideEditFragment()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_0
.end method

.method public onErrorDismiss(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->fail(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideProgress()V

    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logDcbAddError(Lcom/android/volley/VolleyError;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showErrorDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->hideProgress()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->onResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public onVerifyCancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->cancel()V

    return-void
.end method

.method performNext()V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$3;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$flow$CreateDcb3Flow$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performNext()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationRequired:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ASSOCIATING_PIN:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->startAssociation()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->isSubscriberAddressValid(Lcom/google/android/finsky/protos/BillingAddress$Address;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iget-object v0, v0, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getSubscriberInfo(Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iget-object v1, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->addressLine1:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddResult:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showProgress()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->performRequest()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_5

    const-string v0, "Update instrument response is null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Update instrument response is null."

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x155

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    if-eqz v0, :cond_7

    const-string v0, "Unexpected checkout_token_required."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Unexpected checkout_token_required."

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->getRetriableErrors(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logDcbAddError(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mRetriableErrorList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showEditAddressFragment(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-boolean v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logDcbAddError(ILjava/lang/String;)V

    const-string v0, "Update carrier billing instrument had error"

    const-string v1, "UNKNOWN"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddCarrierBillingResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-object v2, v2, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->userMessageHtml:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v4, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logDcbAddError(ILjava/lang/String;)V

    const-string v0, "Could not add carrier billing instrument."

    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showGenericError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected performRequest()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x154

    const/4 v4, 0x0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    new-instance v7, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v7}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->createCarrierBillingInstrument()Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0, v7, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->initParams()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "add_fragment_shown"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "error_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mErrorFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingErrorDialog;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "add_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "edit_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mVerifyFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->saveState(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v0, :cond_4

    const-string v0, "user_provided_address"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "dcb_tos_url"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dcb_tos_version"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pii_tos_version"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pii_tos_url"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method showEditAddressFragment(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mUserProvidedAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1, v2, v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mEditFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mSubscriberAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getSubscriberInfo(Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_0
.end method

.method showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->logError(Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showErrorDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method showGenericError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f09007f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mCarrierName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method showTosFragment(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mCarrierName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAccountName:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragmentShown:Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAddFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_0

    :cond_1
    const-string v1, "showTosFragment has no address and tos. wrong fragment."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_0

    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    goto :goto_0
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->initParams()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method startAssociation()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->showVerifyAssociationDialog()V

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mPiiTosVersion:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;->mAssociationListener:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$AssociationListener;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method
