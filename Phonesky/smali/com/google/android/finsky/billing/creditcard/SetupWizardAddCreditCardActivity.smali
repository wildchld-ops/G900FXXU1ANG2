.class public Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;
.source "SetupWizardAddCreditCardActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mCardholderName:Ljava/lang/String;

.field protected mFragmentContainer:Landroid/view/ViewGroup;

.field private mInitialSetup:Z

.field protected mMainView:Landroid/view/View;

.field private mNeedsHideProgress:Z

.field private mSaveInstanceStateCalled:Z

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mInitialSetup:Z

    return-void
.end method

.method private startOrResumeFlow()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "billing_flow_fragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Re-attached to billing flow fragment."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mCardholderName:Ljava/lang/String;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getContainerId()I

    move-result v2

    const-string v3, "billing_flow_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v1, 0x7f080047

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContainerId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    return v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x37b

    return v0
.end method

.method public hideProgress()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mNeedsHideProgress:Z

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "Cannot interrupt the add credit card flow in the setup wizard."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Invalid account supplied in the intent: %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    iput v5, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->instrumentFamily:I

    iput-boolean v4, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->hasInstrumentFamily:Z

    const-string v2, "billing_flow_instrument"

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mMainView:Landroid/view/View;

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->setContentView(Landroid/view/View;)V

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    const-string v2, "cardholder_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mCardholderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mTitleView:Landroid/widget/TextView;

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "on_initial_setup"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mMainView:Landroid/view/View;

    const/high16 v3, 0x770000

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/Compat;->viewSetSystemUiVisibility(Landroid/view/View;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->removeActionBar()V

    const-string v2, "on_initial_setup"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mInitialSetup:Z

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->startOrResumeFlow()V

    goto :goto_0
.end method

.method public onFinished(ZLandroid/os/Bundle;)V
    .locals 7

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v5, "redeemed_offer_message_html"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "redeemed_offer_message_html"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "redeemed_offer_message_html"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mInitialSetup:Z

    if-nez v5, :cond_0

    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090212

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "result_intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "redeemed_promo_offer"

    invoke-virtual {v2, v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/billing/PromptForFopHelper;->expireHasNoFop(Ljava/lang/String;)V

    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->finish()V

    goto :goto_0
.end method

.method public onFlowCanceled(Lcom/google/android/finsky/billing/BillingFlowFragment;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->onFinished(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public onFlowError(Lcom/google/android/finsky/billing/BillingFlowFragment;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->finish()V

    return-void
.end method

.method public onFlowFinished(Lcom/google/android/finsky/billing/BillingFlowFragment;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->onFinished(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "result_intent"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mSaveInstanceStateCalled:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mNeedsHideProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->hideProgress()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mSaveInstanceStateCalled:Z

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected removeActionBar()V
    .locals 1

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->hide()V

    return-void
.end method

.method public setHostTitle(I)V
    .locals 4

    const-string v0, "Swallowing title: resId=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showProgress(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/SetupWizardAddCreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
