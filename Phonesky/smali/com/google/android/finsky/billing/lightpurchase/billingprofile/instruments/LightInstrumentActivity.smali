.class public abstract Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;
.source "LightInstrumentActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# instance fields
.field protected mFragmentContainer:Landroid/view/ViewGroup;

.field protected mMainView:Landroid/view/View;

.field private mNeedsHideProgress:Z

.field private mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

.field private mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

.field private mSaveInstanceStateCalled:Z

.field protected mSavedFlowState:Landroid/os/Bundle;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;-><init>()V

    return-void
.end method

.method private stopFlow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    return-void
.end method


# virtual methods
.method protected abstract getBillingFlow()Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method protected abstract getBillingFlowFragment()Lcom/google/android/finsky/billing/BillingFlowFragment;
.end method

.method public getContainerId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    return v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Z

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public hideProgress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mNeedsHideProgress:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mNeedsHideProgress:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x258

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v0, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->back()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Cannot interrupt the current flow."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v0, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->back()V

    goto :goto_0

    :cond_2
    const-string v0, "Cannot interrupt the current flow."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040085

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mMainView:Landroid/view/View;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const-string v0, "LightInstrumentActivity.saved_flow_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSavedFlowState:Landroid/os/Bundle;

    const-string v0, "LightInstrumentActivity.progress_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    :cond_0
    const-string v0, "LightInstrumentActivity.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mTitleView:Landroid/widget/TextView;

    const-string v1, "LightInstrumentActivity.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->stopFlow()V

    return-void
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/billing/BillingFlow;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "billing_flow_error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "billing_flow_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->finish()V

    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .locals 8
    .param p1    # Lcom/google/android/finsky/billing/BillingFlow;
    .param p2    # Z
    .param p3    # Landroid/os/Bundle;

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    move v5, v6

    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "billing_flow_error"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "billing_flow_canceled"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string v6, "instrument_id"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "instrument_id"

    const-string v7, "instrument_id"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string v6, "redeemed_offer_message_html"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "redeemed_offer_message_html"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "redeemed_offer_message_html"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090212

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "result_intent"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "result_code"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "redeemed_promo_offer"

    invoke-virtual {v2, v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/finsky/billing/PromptForFopHelper;->expireHasNoFop(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v5, v4}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->finish()V

    goto :goto_1
.end method

.method public onFlowCanceled(Lcom/google/android/finsky/billing/BillingFlowFragment;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowFragment;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public onFlowError(Lcom/google/android/finsky/billing/BillingFlowFragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowFragment;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V

    return-void
.end method

.method public onFlowFinished(Lcom/google/android/finsky/billing/BillingFlowFragment;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/billing/BillingFlowFragment;
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v2, "result_code"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "result_intent"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->onActivityResume()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mNeedsHideProgress:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->hideProgress()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    const-string v1, "LightInstrumentActivity.saved_flow_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-eqz v1, :cond_1

    const-string v1, "LightInstrumentActivity.progress_dialog"

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LightInstrumentActivity.title"

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public setHostTitle(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/support/v4/app/DialogFragment;
    .param p2    # Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public showProgress(I)V
    .locals 3
    .param p1    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mSaveInstanceStateCalled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mProgressDialog:Lcom/google/android/finsky/billing/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startOrResumeFlow(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "LightInstrumentActivity.billing_flow_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingFlowFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Re-attached to billing flow fragment."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getBillingFlowFragment()Lcom/google/android/finsky/billing/BillingFlowFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getContainerId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    const-string v3, "LightInstrumentActivity.billing_flow_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlowFragment:Lcom/google/android/finsky/billing/BillingFlowFragment;

    if-nez v0, :cond_3

    const-string v0, "Couldn\'t instantiate BillingFlow for FOP."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->getBillingFlow()Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_4

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mFragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LightInstrumentActivity;->mRunningFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    goto :goto_2
.end method
