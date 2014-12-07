.class public Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
.source "RedeemCodeFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/SidecarFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mLastStateInstance:I

.field private mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

.field private mSucceeded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;-><init>()V

    return-void
.end method

.method private finish()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getListener()Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "No listener."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;->onFinished()V

    goto :goto_0
.end method

.method private getListener()Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private installApp(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-object v9, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    if-eqz v0, :cond_0

    move v8, v2

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    move v8, v10

    goto :goto_0

    :cond_1
    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;[BLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7, v10}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RedeemCodeFragment.redemption_context"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "RedeemCodeActivity.prefill_code"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private performSuccessAction(Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;->installApp:Lcom/google/android/finsky/protos/PromoCode$InstallAppAction;

    if-eqz v3, :cond_0

    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p1, Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;->installApp:Lcom/google/android/finsky/protos/PromoCode$InstallAppAction;

    iget-object v3, v3, Lcom/google/android/finsky/protos/PromoCode$InstallAppAction;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v2, v3}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->installApp(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    :goto_0
    return v0

    :cond_0
    iget-object v3, p1, Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;->openDoc:Lcom/google/android/finsky/protos/PromoCode$OpenDocAction;

    if-eqz v3, :cond_1

    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p1, Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;->openDoc:Lcom/google/android/finsky/protos/PromoCode$OpenDocAction;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$OpenDocAction;->doc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-direct {v2, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v5, 0x2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;->openHome:Lcom/google/android/finsky/protos/PromoCode$OpenHomeAction;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/IntentUtils;->createAggregatedHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v3, "Unsupported PostSuccessAction."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private succeed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSucceeded:Z

    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->respondWithConfirmation()V

    return-void
.end method

.method public hasSucceeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSucceeded:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    const-string v4, "challenge_response"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "AddressChallengeFlow.address"

    invoke-static {v1, v4}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/BillingAddress$Address;

    const-string v4, "AddressChallengeFlow.checkedCheckboxes"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v4, v0, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->respondWithAddress(Lcom/google/android/finsky/protos/BillingAddress$Address;[Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->finish()V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mAccountName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "RedeemCodeFragment.last_state_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mLastStateInstance:I

    const-string v0, "RedeemCodeFragment.succeeded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSucceeded:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const-string v2, "dialog_details_url"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "RedeemCodeFragment.last_state_instance"

    iget v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mLastStateInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "RedeemCodeFragment.succeeded"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "RedeemCodeFragment.sidecar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RedeemCodeFragment.redemption_context"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->newInstance(Ljava/lang/String;I)Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    const-string v2, "RedeemCodeFragment.sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RedeemCodeActivity.prefill_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    if-eq p1, v6, :cond_0

    const-string v6, "Received state change for unknown fragment: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getStateInstance()I

    move-result v6

    iget v7, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mLastStateInstance:I

    if-gt v6, v7, :cond_1

    const-string v6, "Already received state instance %d, ignore."

    new-array v7, v9, [Ljava/lang/Object;

    iget v8, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mLastStateInstance:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-boolean v6, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "State changed: %d"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getStateInstance()I

    move-result v6

    iput v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mLastStateInstance:I

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    const-string v6, "Unknown sidecar state: %d"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->showLoading()V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getUserConfirmationChallenge()Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->newInstance(Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;)Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "authAccount"

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getAddressChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    move-result-object v0

    const-string v6, "AddressChallengeFlow.resultFormat"

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v10, v0, v3}, Lcom/google/android/finsky/activities/AddressChallengeDialog;->getIntent(ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v9}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v6, 0x377

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->logImpression(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->succeed()V

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getRedemptionSuccess()Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    move-result-object v4

    iget-boolean v6, v4, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->hasButtonLabel:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v4, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->hasMessageHtml:Z

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->newInstance(Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;)Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->performSuccessActionAndFinish()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getSubstate()I

    move-result v6

    if-ne v6, v9, :cond_4

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v7}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v6, "Redemption error: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    instance-of v6, v6, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->hideLoading()V

    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mCurrentFragment:Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;

    check-cast v6, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->showError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getErrorHtml()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mAccountName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7, v1}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->showStep(Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mContinueButton:Lcom/google/android/finsky/layout/IconButtonGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/play/utils/PlayCorpusUtils;->getPlayActionButtonBackgroundDrawable(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/IconButtonGroup;->setLabelBackgroundResource(I)V

    return-void
.end method

.method public performSuccessActionAndFinish()V
    .locals 3

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSucceeded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->getRedemptionSuccess()Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->postSuccessAction:Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->postSuccessAction:Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->performSuccessAction(Lcom/google/android/finsky/protos/PromoCode$PostSuccessAction;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Dialog shown, waiting for user input."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->finish()V

    goto :goto_0
.end method

.method public redeem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->mSidecar:Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeSidecar;->redeem(Ljava/lang/String;)V

    return-void
.end method
