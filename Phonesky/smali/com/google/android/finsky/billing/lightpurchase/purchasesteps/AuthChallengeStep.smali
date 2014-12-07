.class public Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "AuthChallengeStep.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
        "<",
        "Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;",
        "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;"
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

.field private mClientLoginApi:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorView:Landroid/widget/TextView;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mFailedCount:I

.field private mHelpToggle:Landroid/widget/ImageView;

.field private mIsOptOutChecked:Z

.field private mIsPasswordHelpExpanded:Z

.field private mOptOutCheckbox:Landroid/widget/CheckBox;

.field private mOptOutInfo:Landroid/widget/TextView;

.field private mPasswordHelpView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/EditText;

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    const/16 v0, 0x2ee

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->verifyGaia()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->fail()V

    return-void
.end method

.method private fail()V
    .locals 1

    const v0, 0x7f09007b

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->fail(I)V

    return-void
.end method

.method private fail(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mFailedCount:I

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x1fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mFailedCount:I

    sget-object v0, Lcom/google/android/finsky/config/G;->passwordMaxFailedAttempts:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->failWithMaxAttemptsExceeded()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showErrorMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->hideLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showKeyboardDelayed(Landroid/view/View;)V

    goto :goto_0
.end method

.method private failWithMaxAttemptsExceeded()V
    .locals 7

    const/4 v6, 0x1

    sget-object v3, Lcom/google/android/finsky/config/G;->passwordHelpUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "%email%"

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09009a

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09014b

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v6}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    return-void
.end method

.method private hideKeyboardDelayed(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$3;-><init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AuthChallengeStep.challenge"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorMessage:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0, p1, v1}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private showKeyboardDelayed(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$2;-><init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPasswordHelp()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsPasswordHelpExpanded:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordHelpView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mHelpToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private verifyGaia()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->hideKeyboardDelayed(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->showLoading()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mClientLoginApi:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0900a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->onAuthSuccess()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->fail()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Not resumed, ignoring auth challenge failure."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->TWO_FACTOR:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->onAuthSuccess()V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->BAD_AUTHENTICATION:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-ne p2, v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showPasswordHelp()V

    const v3, 0x7f090099

    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->fail(I)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->CAPTCHA:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-eq p2, v3, :cond_3

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->fail()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "password"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$4;-><init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onAuthSuccess()V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Not resumed, ignoring auth challenge success."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v3, v3, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget v6, v6, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->authenticationType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v3, v3, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mFailedCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "Got through auth while opted out?"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v7, 0x190

    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v8, "purchase-auth-screen"

    invoke-virtual {v6, v7, v4, v3, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSettingsBackgroundEvent(IILjava/lang/Integer;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v4, 0x1fc

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logOperationSuccessBackgroundEvent(IZ)V

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->answerChallenge(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutCheckbox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2f1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->logClick(I)V

    iput-boolean p2, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mHelpToggle:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2f0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->logClick(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showPasswordHelp()V

    :cond_0
    return-void
.end method

.method public onContinueButtonClicked()V
    .locals 1

    const/16 v0, 0x2ef

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->logClick(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->verifyGaia()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AuthChallengeStep.challenge"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-eqz p1, :cond_0

    const-string v0, "AuthChallengeStep.retryCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mFailedCount:I

    const-string v0, "AuthChallengeStep.optOutSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    const-string v0, "AuthChallengeStep.passwordHelpExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsPasswordHelpExpanded:Z

    const-string v0, "AuthChallengeStep.errorMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorMessage:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;-><init>(Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mClientLoginApi:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const v4, 0x7f040090

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080168

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    new-instance v5, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep$1;-><init>(Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v4, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mHelpToggle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mHelpToggle:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f08016a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordHelpView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordHelpView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordHelpView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaFooterTextHtml:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsPasswordHelpExpanded:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showPasswordHelp()V

    :cond_0
    const v4, 0x7f08012f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorMessage:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showErrorMessage(Ljava/lang/String;)V

    :cond_1
    const v4, 0x7f080147

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutInfo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v5, v5, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutDescriptionTextHtml:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v4, 0x7f08016b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v1, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaOptOutCheckbox:Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutCheckbox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    const v4, 0x7f080150

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    iget-object v4, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaDescriptionTextHtml:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mPasswordView:Landroid/widget/EditText;

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->showKeyboardDelayed(Landroid/view/View;)V

    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutCheckbox:Landroid/widget/CheckBox;

    iget-object v5, v1, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, v1, Lcom/google/android/finsky/protos/ChallengeProtos$FormCheckbox;->checked:Z

    iput-boolean v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mOptOutCheckbox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AuthChallengeStep.retryCount"

    iget v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mFailedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "AuthChallengeStep.optOutSelected"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsOptOutChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "AuthChallengeStep.passwordHelpExpanded"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mIsPasswordHelpExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "AuthChallengeStep.errorMessage"

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/AuthChallengeStep;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
