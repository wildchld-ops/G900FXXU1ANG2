.class public abstract Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;
.super Lcom/google/android/finsky/billing/BillingFlowFragment;
.source "LegacyFlowWrapperFragment.java"

# interfaces
.implements Lcom/google/android/finsky/billing/BillingFlowContext;
.implements Lcom/google/android/finsky/billing/BillingFlowListener;


# instance fields
.field protected mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/BillingFlowFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public back()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->back()V

    :cond_0
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingFlow;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getLegacyPurchaseFlow()Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Z

    const-string v0, "Not implemented."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public hideProgress()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CompleteDcb3Flow.progressDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/ProgressDialogFragment;

    if-nez v0, :cond_0

    const-string v1, "Progress dialog not shown."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/finsky/billing/BillingFlow;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/BillingFlow;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->fail(Ljava/lang/String;)V

    return-void
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/BillingFlow;
    .param p2    # Z
    .param p3    # Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->cancel()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->finish(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/BillingFlowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "CompleteDcb3Flow.flowState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public showDialogFragment(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/DialogFragment;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const-string v0, "Not implemented."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public showProgress(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CompleteDcb3Flow.progressDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Duplicate progress dialog."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->newInstance(I)Lcom/google/android/finsky/billing/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "CompleteDcb3Flow.progressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startOrResumeLegacyFlow(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->getLegacyPurchaseFlow()Lcom/google/android/finsky/billing/BillingFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz p1, :cond_0

    const-string v1, "CompleteDcb3Flow.flowState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CompleteDcb3Flow.flowState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/LegacyFlowWrapperFragment;->mLegacyFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_0
.end method
