.class public Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;
.implements Lcom/google/android/finsky/billing/DownloadSizeDialogFragment$Listener;
.implements Lcom/google/android/finsky/fragments/SidecarFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;,
        Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$Listener;
    }
.end annotation


# instance fields
.field private mAppDownloadSizeWarningParameters:Landroid/os/Bundle;

.field private mCommitChallengeResponses:Landroid/os/Bundle;

.field private mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

.field private mCompleteFlowResult:Landroid/os/Bundle;

.field private mDcbInitialized:Z

.field private mDocServerLogsCookie:[B

.field private mError:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

.field private mHandledPurchaseStateInstance:I

.field private mHasContinueButtonIcon:Z

.field private mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

.field private mPrepareChallengeResponses:Landroid/os/Bundle;

.field private mPreviousState:I

.field private mPreviousSubstate:I

.field private mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

.field private mSelectedInstrumentId:Ljava/lang/String;

.field private mSucceeded:Z

.field private mUseBlueHighlight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHandledPurchaseStateInstance:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPrepareChallengeResponses:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCommitChallengeResponses:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->onInitialized()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mDcbInitialized:Z

    return p1
.end method

.method private completeCheckoutPurchase()V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCart()Lcom/google/android/finsky/protos/Purchase$ClientCart;

    move-result-object v3

    iget-object v2, v3, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget v3, v2, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/protos/CommonDevice$Instrument;)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Util;->getCompleteParameters()Ljava/util/Map;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCommitChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->commit(Landroid/os/Bundle;Ljava/util/Map;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowResult:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Util;->getCompleteParameters(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private fail(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    const-string v0, "Purchase failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mError:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    return-void
.end method

.method private handleCompleteChallenge()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCompleteChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->startChallenge(Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)V

    goto :goto_0
.end method

.method private handleError()V
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    invoke-direct {v1, v5, v5}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;-><init>(II)V

    const v6, 0x7f09007b

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousState:I

    if-ne v6, v4, :cond_1

    iget v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousSubstate:I

    if-ne v6, v4, :cond_1

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getSubstate()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    const-string v6, "Error: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v6, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->fail(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;)V

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showError(Ljava/lang/String;Z)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    invoke-direct {v1, v7, v5}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    invoke-direct {v1, v7, v5}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;-><init>(II)V

    const v6, 0x7f09014c

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCheckoutPurchaseError()Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    const/4 v6, 0x3

    iget v7, v0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->permissionError:I

    invoke-direct {v1, v6, v7}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;-><init>(II)V

    iget-object v2, v0, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment$CheckoutPurchaseError;->errorMessageHtml:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleInit()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->preparePurchase()V

    return-void
.end method

.method private handlePrepareChallenge()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getPrepareChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->startChallenge(Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)V

    return-void
.end method

.method private handlePrepared()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mUseBlueHighlight:Z

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCart()Lcom/google/android/finsky/protos/Purchase$ClientCart;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;->newInstance(IZLcom/google/android/finsky/protos/Purchase$ClientCart;)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/CartDetailsStep;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    return-void
.end method

.method private initializeDcb(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mDcbInitialized:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mDcbInitialized:Z

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$2;-><init>(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;Ljava/lang/Runnable;)V

    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Initializing DCB."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeStorageAndParams(Landroid/content/Context;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;
    .locals 3
    .param p0    # Landroid/accounts/Account;
    .param p1    # Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;
    .param p2    # [B
    .param p3    # Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PurchaseFragment.account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "PurchaseFragment.params"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "PurchaseFragment.docServerLogsCookie"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "PurchaseFragment.appDownloadSizeWarningArgs"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onInitialized()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Not ready, ignoring."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const-string v2, "PurchaseFragment.purchaseFragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    goto :goto_0
.end method

.method private removeCompleteFlowFragment()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    :cond_0
    return-void
.end method

.method private runCompleteFlowAndContinue()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCart()Lcom/google/android/finsky/protos/Purchase$ClientCart;

    move-result-object v2

    iget-object v1, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iget v2, v1, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    if-ne v2, v4, :cond_3

    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/protos/CommonDevice$Instrument;)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-eqz v2, :cond_0

    const-string v2, "No complete flow fragment expected."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-ne v0, v4, :cond_2

    const-string v2, "Start complete flow for DCB2 instrument."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb2FlowFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showLoading()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    const-string v4, "PurchaseFragment.completeFlowFragment"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v2, "Start complete flow for DCB3 instrument."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v1}, Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;->newInstance(Landroid/accounts/Account;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/billing/lightpurchase/CompleteDcb3FlowFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->completeCheckoutPurchase()V

    goto :goto_0
.end method

.method private showAppDownloadWarningAndContinue()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v1, v1, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAppDownloadSizeWarningParameters:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAppDownloadSizeWarningParameters:Landroid/os/Bundle;

    invoke-static {p0, v1}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->newInstance(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PurchaseFragment.appDownloadSizeWarningDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/DownloadSizeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->runCompleteFlowAndContinue()V

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const v1, 0x7f09014b

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    return-void
.end method

.method private startChallenge(Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    const/4 v5, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v2, v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v2, v2, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    iget-object v3, p1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->addressChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-static {v2, v3, v1}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent(ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->webViewChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/WebViewChallengeActivity;->createIntent(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/ChallengeProtos$WebViewChallenge;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "Don\'t know how to handle prepare challenge for doc: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v4, v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showError(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private succeed()V
    .locals 2

    const-string v0, "Purchase succeeded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSucceeded:Z

    return-void
.end method


# virtual methods
.method public answerChallenge(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "Cannot answer challenge in state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->preparePurchase()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCommitChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->completeCheckoutPurchase()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public confirmPurchase()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v2, v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v2, v2, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completePurchase?doc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v3, v3, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docidStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/analytics/Analytics;->logAdMobPageView(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showAppDownloadWarningAndContinue()V

    return-void
.end method

.method public expand(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    const v0, 0x7f0b0061

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mMainView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    return-void

    :cond_0
    const v0, 0x7f0b0060

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$Listener;->onFinished()V

    return-void
.end method

.method public getCheckoutPurchaseFragment()Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    return-object v0
.end method

.method public getError()Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mError:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    return-object v0
.end method

.method public getServerLogsCookie()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getServerLogsCookie()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getServerLogsCookie()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mDocServerLogsCookie:[B

    goto :goto_0
.end method

.method public hasFailed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mError:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSucceeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSucceeded:Z

    return v0
.end method

.method public hideProgress()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isDismissable(I)Z
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getState()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getSubstate()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public launchBillingProfile()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getCart()Lcom/google/android/finsky/protos/Purchase$ClientCart;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/finsky/protos/Purchase$ClientCart;->purchaseContextToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->createIntent(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public nextStep()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->handleInit()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showLoading()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->handlePrepareChallenge()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->handlePrepared()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->handleCompleteChallenge()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->succeed()V

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/SuccessStep;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->handleError()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p3}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->extractSelectedInstrumentId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->preparePurchase()V

    goto :goto_0

    :pswitch_1
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->finish()V

    goto :goto_0

    :cond_1
    const-string v2, "challenge_response"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->answerChallenge(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must implement PlayStoreUiElementNode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PurchaseFragment.purchaseFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const-string v1, "PurchaseFragment.handledStateInstance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHandledPurchaseStateInstance:I

    const-string v1, "PurchaseFragment.previousState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousState:I

    const-string v1, "PurchaseFragment.previousSubstate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousSubstate:I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PurchaseFragment.docServerLogsCookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mDocServerLogsCookie:[B

    const-string v1, "PurchaseFragment.appDownloadSizeWarningArgs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAppDownloadSizeWarningParameters:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v1, "PurchaseFragment.params"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    const-string v1, "PurchaseFragment.selectedInstrumentId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSelectedInstrumentId:Ljava/lang/String;

    const-string v1, "PurchaseFragment.prepareChallengeResponses"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPrepareChallengeResponses:Landroid/os/Bundle;

    const-string v1, "PurchaseFragment.commitChallengeResponses"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCommitChallengeResponses:Landroid/os/Bundle;

    const-string v1, "PurchaseFragment.error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mError:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    const-string v1, "PurchaseFragment.succeeded"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSucceeded:Z

    :goto_0
    return-void

    :cond_1
    const-string v1, "PurchaseFragment.params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadCancel()V
    .locals 4

    const-string v0, "Download size warning dismissed for app = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v3, v3, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v3, v3, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadOk(Z)V
    .locals 5
    .param p1    # Z

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v1, v1, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget-object v0, v1, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    const-string v1, "Will download %s using wifi only = %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->runCompleteFlowAndContinue()V

    return-void
.end method

.method public onFlowCanceled(Lcom/google/android/finsky/billing/BillingFlowFragment;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not resumed, ignoring onFlowCanceled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->removeCompleteFlowFragment()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hideLoading()V

    goto :goto_0
.end method

.method public onFlowError(Lcom/google/android/finsky/billing/BillingFlowFragment;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowFragment;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not resumed, ignoring onFlowError."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showError(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->removeCompleteFlowFragment()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hideLoading()V

    goto :goto_0
.end method

.method public onFlowFinished(Lcom/google/android/finsky/billing/BillingFlowFragment;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowFragment;
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Not resumed, ignoring onFlowFinished."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->removeCompleteFlowFragment()V

    iput-object p2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowResult:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->completeCheckoutPurchase()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "PurchaseFragment.handledStateInstance"

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHandledPurchaseStateInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PurchaseFragment.previousState"

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PurchaseFragment.previousSubstate"

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousSubstate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PurchaseFragment.params"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "PurchaseFragment.prepareChallengeResponses"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "PurchaseFragment.commitChallengeResponses"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCommitChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "PurchaseFragment.selectedInstrumentId"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSelectedInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PurchaseFragment.succeeded"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "PurchaseFragment.error"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mError:Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$PurchaseError;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSetupWifi()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PurchaseFragment.completeFlowFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingFlowFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mCompleteFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->initializeDcb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/fragments/SidecarFragment;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v0

    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Received state change: state=%d, stateInstance=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHandledPurchaseStateInstance:I

    if-ne v0, v1, :cond_2

    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Already handled state %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHandledPurchaseStateInstance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHandledPurchaseStateInstance:I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->nextStep()V

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousState:I

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getSubstate()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPreviousSubstate:I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v2

    const-string v6, "cl:billing.purchase_button_blue_background"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mUseBlueHighlight:Z

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v6, v6, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    iget v0, v6, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    const/4 v4, 0x0

    const-string v6, "cl:billing.purchase_button_show_wallet_corpus_icon"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mUseBlueHighlight:Z

    if-eqz v6, :cond_5

    move v4, v5

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHasContinueButtonIcon:Z

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mHasContinueButtonIcon:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/IconButtonGroup;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mUseBlueHighlight:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/IconButtonGroup;->setLabelBackgroundColor(I)V

    :goto_1
    const-string v5, "cl:billing.purchase_dialog_wide_button"

    invoke-interface {v2, v5}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mContinueButtonLabel:Landroid/widget/TextView;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_3
    const-string v5, "cl:billing.purchase_dialog_hide_play_logo"

    invoke-interface {v2, v5}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f080157

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPurchaseButtonWalletIcon(I)I

    move-result v4

    goto :goto_0

    :cond_6
    const-string v6, "cl:billing.purchase_button_show_wallet_3d_icon"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const v4, 0x7f02013b

    goto :goto_0

    :cond_7
    const-string v6, "cl:billing.purchase_button_show_play_corpus_icon"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mUseBlueHighlight:Z

    if-eqz v6, :cond_8

    const v4, 0x7f020133

    :goto_2
    goto/16 :goto_0

    :cond_8
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPurchaseButtonPlayIcon(I)I

    move-result v4

    goto :goto_2

    :cond_9
    const-string v6, "cl:billing.purchase_button_show_play_3d_icon"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const v4, 0x7f020134

    goto/16 :goto_0

    :cond_a
    const-string v6, "cl:billing.purchase_button_show_lock_corpus_icon"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mUseBlueHighlight:Z

    if-eqz v6, :cond_b

    const v4, 0x7f02012b

    :goto_3
    goto/16 :goto_0

    :cond_b
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPurchaseButtonLockIcon(I)I

    move-result v4

    goto :goto_3

    :cond_c
    const-string v6, "cl:billing.purchase_button_show_lock_3d_icon"

    invoke-interface {v2, v6}, Lcom/google/android/finsky/experiments/Experiments;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v4, 0x7f02012c

    goto/16 :goto_0

    :cond_d
    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/play/utils/PlayCorpusUtils;->getPlayActionButtonBackgroundDrawable(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/IconButtonGroup;->setLabelBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method public preparePurchase()V
    .locals 6

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    new-instance v4, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v4, v1, v2, v0}, Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;-><init>(JZ)V

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/finsky/config/G;->lightPurchaseOptimisticProvisioning:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0, v5}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->addPrepareOrBillingProfileParams(ZZLjava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPurchaseFragment:Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mParams:Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mSelectedInstrumentId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/billing/lightpurchase/CheckoutPurchaseFragment;->prepare(Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/finsky/api/DfeApi$GaiaAuthParameters;Ljava/util/Map;)V

    return-void
.end method

.method public setHostTitle(I)V
    .locals 1
    .param p1    # I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showProgress(I)V
    .locals 1
    .param p1    # I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
