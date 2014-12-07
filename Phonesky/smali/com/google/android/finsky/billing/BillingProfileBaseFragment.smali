.class public abstract Lcom/google/android/finsky/billing/BillingProfileBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BillingProfileBaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;,
        Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;,
        Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private final mBillingProfileListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;

.field private mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

.field private final mCarrierBillingProvisioningListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;

.field private mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

.field protected mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mLastBillingProfileStateInstance:I

.field private mLastCarrierBillingStateInstance:I

.field protected mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

.field private mProfileDirty:Z

.field protected mProfileView:Landroid/view/View;

.field private mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;

.field protected mProgressIndicator:Landroid/view/View;

.field private mPurchaseContextToken:Ljava/lang/String;

.field private mStoredValueInstrumentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;

    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mCarrierBillingProvisioningListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;

    iput v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I

    iput v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileDirty:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->handleSuccess(Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->handleError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/billing/ProgressDialogFragment;)Lcom/google/android/finsky/billing/ProgressDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->addDcb2()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onDcbError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$BillingProfileListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->addCreditCard()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->redeemCheckoutCode()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->topup(Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->addDcb3(Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->ensureProvisionedAndAddDcb2()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I

    return p1
.end method

.method private addCreditCard()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddCreditCardActivity;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private addDcb2()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb2Activity;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private addDcb3(Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/AddDcb3Activity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private billingProfileOptionToActionEntry(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;
    .locals 4

    iget v0, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Skipping unknown option: type=%d, displayTitle=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    iget-object v1, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getCreditCardIcon()I

    move-result v2

    new-instance v3, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$2;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getDcbAction(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    iget-object v1, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getGiftCardIcon()I

    move-result v2

    new-instance v3, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$3;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    iget-object v1, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getTopUpIcon()I

    move-result v2

    new-instance v3, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$4;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureProvisionedAndAddDcb2()V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->addDcb2()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "BillingProfileFragment.carrierBillingSidecar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    if-eqz v0, :cond_1

    const-string v0, "Not expected to have a carrier billing fragment."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mCarrierBillingProvisioningListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    const-string v2, "BillingProfileFragment.carrierBillingSidecar"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private getDcbAction(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->isDcb3SetupOption(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$5;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)V

    :goto_0
    new-instance v1, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    iget-object v2, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->displayTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getDcbIcon()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;-><init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$6;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    goto :goto_0
.end method

.method private handleError()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getSubstate()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Don\'t know how to handle error substate %d, cancel."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getSubstate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f09014b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onFatalError(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getErrorMessageHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onFatalError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onFatalError(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSuccess(Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileDirty:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->renderProfile()V

    return-void
.end method

.method private isDcb3SetupOption(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;->carrierBillingInstrumentStatus:Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;

    iget v0, v0, Lcom/google/android/finsky/protos/CommonDevice$CarrierBillingInstrumentStatus;->apiVersion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDcbError(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->renderProfile()V

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "BillingProfileFragment.errorDialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private redeemCheckoutCode()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getRedemptionContext()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->createIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->logLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private topup(Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract getBackgroundEventServerLogsCookie()[B
.end method

.method protected abstract getCreditCardEventType()I
.end method

.method protected abstract getCreditCardIcon()I
.end method

.method protected abstract getDcbEventType()I
.end method

.method protected abstract getDcbIcon()I
.end method

.method protected abstract getGiftCardIcon()I
.end method

.method protected abstract getRedeemEventType()I
.end method

.method protected abstract getRedemptionContext()I
.end method

.method protected abstract getTopUpIcon()I
.end method

.method protected abstract getTopupEventType()I
.end method

.method protected abstract logLoading()V
.end method

.method protected abstract logScreen()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getBackgroundEventServerLogsCookie()[B

    move-result-object v2

    packed-switch p1, :pswitch_data_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getCreditCardEventType()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getDcbEventType()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getRedeemEventType()I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getTopupEventType()I

    move-result v0

    goto :goto_0

    :pswitch_4
    if-ne p2, v3, :cond_0

    const-string v3, "instrument_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(I[B)V

    const-string v3, "instrument_id"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onInstrumentCreated(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(I[B)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mStoredValueInstrumentId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->onStoredValueAdded(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BillingProfileFragment.account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BillingProfileFragment.purchaseContextToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mPurchaseContextToken:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "BillingProfileFragment.profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BillingProfileFragment.profile"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileDirty:Z

    :cond_0
    const-string v0, "BillingProfileFragment.lastBillingProfileStateInstance"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I

    const-string v0, "BillingProfileFragment.lastCarrierBillingStateInstance"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I

    const-string v0, "PurchaseFlowBillingProfileFragment.storedValueInstrumentId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mStoredValueInstrumentId:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-void
.end method

.method protected abstract onFatalError(Ljava/lang/String;)V
.end method

.method protected abstract onInstrumentCreated(Ljava/lang/String;)V
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment$1;-><init>(Lcom/google/android/finsky/billing/BillingProfileBaseFragment;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeStorageAndParams(Landroid/content/Context;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mCarrierBillingProvisioningListener:Lcom/google/android/finsky/billing/BillingProfileBaseFragment$CarrierBillingProvisioningListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    if-eqz v0, :cond_0

    const-string v0, "BillingProfileFragment.profile"

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "BillingProfileFragment.lastBillingProfileStateInstance"

    iget v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastBillingProfileStateInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "BillingProfileFragment.lastCarrierBillingStateInstance"

    iget v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mLastCarrierBillingStateInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PurchaseFlowBillingProfileFragment.storedValueInstrumentId"

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mStoredValueInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "BillingProfileFragment.billingProfileSidecar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mPurchaseContextToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    const-string v2, "BillingProfileFragment.billingProfileSidecar"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "BillingProfileFragment.carrierBillingSidecar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mDcb2ProvisioningSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/Dcb2ProvisioningSidecar;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "BillingProfileFragment.carrierBillingProgressFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressFragment:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    return-void
.end method

.method protected abstract onStoredValueAdded(Ljava/lang/String;)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mProfileView not set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressIndicator:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mProgressIndicator not set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->renderProfile()V

    return-void
.end method

.method protected abstract renderActions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract renderInstruments([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V
.end method

.method protected renderProfile()V
    .locals 11

    const/4 v10, 0x0

    iget-boolean v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileDirty:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v10, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileDirty:Z

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iget-object v8, v8, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;->instrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->shouldRender([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProgressIndicator:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iget-object v2, v8, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;->instrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    array-length v5, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v2, v3

    iget v8, v4, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    iget-object v8, v4, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    if-eqz v8, :cond_2

    iget-object v7, v4, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->storedValue:Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;

    iget v8, v7, Lcom/google/android/finsky/protos/CommonDevice$StoredValueInstrument;->type:I

    const/16 v9, 0x21

    if-ne v8, v9, :cond_2

    iget-object v8, v4, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->externalInstrumentId:Ljava/lang/String;

    iput-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mStoredValueInstrumentId:Ljava/lang/String;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iget-object v8, v8, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;->instrument:[Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->renderInstruments([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iget-object v8, v8, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;->billingProfileOption:[Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    array-length v8, v8

    invoke-static {v8}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfile:Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;

    iget-object v2, v8, Lcom/google/android/finsky/protos/CommonDevice$BillingProfile;->billingProfileOption:[Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;

    array-length v5, v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v6, v2, v3

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->billingProfileOptionToActionEntry(Lcom/google/android/finsky/protos/CommonDevice$BillingProfileOption;)Lcom/google/android/finsky/billing/BillingProfileBaseFragment$ActionEntry;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->renderActions(Ljava/util/List;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mProfileView:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->logScreen()V

    goto :goto_0
.end method

.method protected requestBillingProfile()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->addPrepareOrBillingProfileParams(ZZLjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->mBillingProfileSidecar:Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileSidecar;->start(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;->showLoading()V

    return-void
.end method

.method protected shouldRender([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
