.class public abstract Lcom/google/android/finsky/billing/BillingFlowFragment;
.super Landroid/support/v4/app/Fragment;
.source "BillingFlowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;
    }
.end annotation


# instance fields
.field protected mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract back()V
.end method

.method public abstract canGoBack()Z
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->onFlowCanceled(Lcom/google/android/finsky/billing/BillingFlowFragment;)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    invoke-interface {v0, p0, p1}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->onFlowError(Lcom/google/android/finsky/billing/BillingFlowFragment;Ljava/lang/String;)V

    return-void
.end method

.method public finish(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    invoke-interface {v0, p0, p1}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->onFlowFinished(Lcom/google/android/finsky/billing/BillingFlowFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    iput-object v0, p0, Lcom/google/android/finsky/billing/BillingFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    goto :goto_0
.end method
