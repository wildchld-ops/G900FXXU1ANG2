.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;
.source "RedeemCodeActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment$Listener;


# instance fields
.field private mRedeemCodeFragment:Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->createIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RedeemCodeActivity.redemption_context"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "RedeemCodeActivity.prefill_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->mRedeemCodeFragment:Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->mRedeemCodeFragment:Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->hasSucceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->expireHasNoFop(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->setResult(I)V

    :goto_0
    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x370

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04011c

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->setContentView(I)V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RedeemCodeActivity.redemption_context"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "RedeemCodeActivity.prefill_code"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->newInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080046

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->mRedeemCodeFragment:Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    return-void
.end method
