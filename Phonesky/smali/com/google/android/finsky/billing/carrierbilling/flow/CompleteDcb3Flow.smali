.class public Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
.source "CompleteDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;
.implements Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;,
        Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;",
        ">;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;",
        "Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;"
    }
.end annotation


# static fields
.field private static final DCB_PIN_SIGNING_KEYS:Ljava/lang/String;

.field private static final GOOGLE_ENCRYPTION_KEYS_V1:Ljava/lang/String;

.field private static final GOOGLE_ENCRYPTION_KEYS_V2:Ljava/lang/String;


# instance fields
.field private mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

.field private mAssociationAddress:Ljava/lang/String;

.field private mAssociationPrefix:Ljava/lang/String;

.field private mAssociationRequired:Z

.field private mCarrierName:Ljava/lang/String;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mDcbTosAcceptanceRequired:Z

.field private mDcbTosUrl:Ljava/lang/String;

.field private mDcbTosVersion:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mEncryptedPassword:Ljava/lang/String;

.field private final mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field private mInstrumentUpdateRequired:Z

.field private mPasswordForgotUrl:Ljava/lang/String;

.field private mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

.field private mPasswordPrompt:Ljava/lang/String;

.field private mPasswordRequired:Z

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

.field private mTosNumber:I

.field private mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

.field private mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/utils/FixBrokenCipherSpiProvider;->insertIfNeeded()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dcb-pin-sign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->DCB_PIN_SIGNING_KEYS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dcb-pin-encrypt-v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->GOOGLE_ENCRYPTION_KEYS_V1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dcb-pin-encrypt-v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->GOOGLE_ENCRYPTION_KEYS_V2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, p6}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    iput v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    iput-object p5, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-eqz p6, :cond_4

    const-string v1, "dcb_instrument"

    invoke-static {p6, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v0, v1, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBillingStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    iget-boolean v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->passwordRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;->prompt:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordPrompt:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierPasswordPrompt:Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$PasswordPrompt;->forgotPasswordUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordForgotUrl:Ljava/lang/String;

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->associationRequired:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;->userTokenRequestAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->deviceAssociation:Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$DeviceAssociation;->userTokenRequestMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mCarrierName:Ljava/lang/String;

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mCarrierName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Carrier name is empty. Can\'t proceed with the flow."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object p1
.end method

.method private dissmissPasswordFragment()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    :cond_0
    return-void
.end method

.method private encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v8, Lcom/google/android/finsky/config/G;->dcb3PassphraseKeyVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v8, "Unrecognized passphrase key version %d, using default"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_1
    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->GOOGLE_ENCRYPTION_KEYS_V2:Ljava/lang/String;

    :goto_0
    const-string v8, "Using passphrase key path: %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/keyczar/Encrypter;

    new-instance v8, Lcom/google/android/finsky/utils/AndroidKeyczarReader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/google/android/finsky/utils/AndroidKeyczarReader;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lorg/keyczar/Encrypter;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    new-instance v7, Lorg/keyczar/Signer;

    new-instance v8, Lcom/google/android/finsky/utils/AndroidKeyczarReader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->DCB_PIN_SIGNING_KEYS:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/google/android/finsky/utils/AndroidKeyczarReader;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/keyczar/Signer;-><init>(Lorg/keyczar/interfaces/KeyczarReader;)V

    new-instance v6, Lorg/keyczar/SignedSessionEncrypter;

    invoke-direct {v6, v1, v7}, Lorg/keyczar/SignedSessionEncrypter;-><init>(Lorg/keyczar/Encrypter;Lorg/keyczar/Signer;)V

    invoke-virtual {v6}, Lorg/keyczar/SignedSessionEncrypter;->newSession()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/keyczar/SignedSessionEncrypter;->encrypt([B)[B

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "efeData"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "fieldData"

    invoke-static {v2}, Lorg/keyczar/util/Base64Coder;->encodeWebSafe([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :pswitch_2
    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->GOOGLE_ENCRYPTION_KEYS_V1:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hideVerifyAssociationDialog()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    :cond_0
    return-void
.end method

.method private setAcceptedTos()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    return-void
.end method

.method private showVerifyAssociationDialog()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    const-string v2, "verifying pin"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method private startAssociation()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->showVerifyAssociationDialog()V

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method createAndShowPasswordFragment()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordPrompt:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordForgotUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    const-string v2, "PasswordDialog"

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method createAndShowTosFragment(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mCarrierName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TosDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosNumber:I

    return-void
.end method

.method public onCarrierBillingPasswordResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;Ljava/lang/String;)V
    .locals 6

    const v5, 0x7f09007c

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    :cond_0
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener$PasswordResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "enum %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEncryptedPassword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEncryptedPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception thrown: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    goto :goto_0

    :pswitch_2
    const-string v1, "Getting password info failed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCarrierTosResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    :cond_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$2;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$CarrierTosDialogFragment$CarrierTosResultListener$TosResult:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener$TosResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "enum %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->setAcceptedTos()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_0

    :pswitch_1
    const-string v0, "Showing TOS to user failed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->hideVerifyAssociationDialog()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->hideVerifyAssociationDialog()V

    iget v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    iget-object v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    iget-object v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v1, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;->carrierErrorMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f090094

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->onResponse(Lcom/google/android/finsky/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method public onVerifyCancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->cancel()V

    return-void
.end method

.method protected performNext()V
    .locals 5

    const v4, 0x7f09007c

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationRequired:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->startAssociation()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowTosFragment(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrumentUpdateRequired:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->updateCarrierBillingInstrument()V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v1, :cond_6

    const-string v1, "Failed to get update instrument response."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget v1, v1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->result:I

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    iget-boolean v1, v1, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->checkoutTokenRequired:Z

    if-eqz v1, :cond_9

    const-string v1, "Unexpected checkout_token_required."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "Updating DCB instrument failed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v1, v2, :cond_b

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->dissmissPasswordFragment()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "encrypted_passphrase"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordRequired:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->createAndShowPasswordFragment()V

    :cond_1
    :goto_0
    const-string v0, "tos_required"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    const-string v0, "tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tos_version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    :cond_2
    const-string v0, "tos_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tos_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    :cond_3
    const-string v0, "tos_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment$CarrierTosResultListener;)V

    :cond_4
    const-string v0, "password_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment$CarrierBillingPasswordResultListener;)V

    :cond_5
    const-string v0, "verify_association_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_association_dialog"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;->setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment$VerifyPinListener;)V

    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationPrefix:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->finish()V

    goto/16 :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "tos_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mTosFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierTosDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "password_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mPasswordFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/CarrierBillingPasswordDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "verify_association_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mVerifyAssociationFragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/VerifyPinDialogFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->saveState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mAssociationAction:Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;->cancel()V

    :cond_2
    const-string v0, "tos_required"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosAcceptanceRequired:Z

    if-eqz v0, :cond_3

    const-string v0, "tos_version"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tos_url"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    return-void
.end method

.method updateCarrierBillingInstrument()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v4, 0x7f090065

    invoke-interface {v3, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->instrumentKey:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->hasInstrumentKey:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;-><init>()V

    new-instance v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v3}, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;-><init>()V

    iput-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDcbTosVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->version:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;->dcbTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;

    iput-boolean v5, v3, Lcom/google/android/finsky/protos/CommonDevice$CarrierTosEntry;->hasVersion:Z

    iput-object v0, v1, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;->acceptedCarrierTos:Lcom/google/android/finsky/protos/CommonDevice$CarrierTos;

    :cond_0
    new-instance v2, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v2}, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v3, v2, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget-object v3, v2, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object v1, v3, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->carrierBilling:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrument;

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;)V

    invoke-interface {v3, v2, v4, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method
