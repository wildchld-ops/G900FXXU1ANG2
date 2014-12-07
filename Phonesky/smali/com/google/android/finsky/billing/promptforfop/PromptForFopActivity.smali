.class public Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;
.super Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;
.source "PromptForFopActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment$Listener;
.implements Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment$Listener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mServerLogsCookie:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/accounts/Account;[B)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/accounts/Account;
    .param p1    # [B

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PromptForFopActivity.account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "authAccount"

    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PromptForFopActivity.server_logs_cookie"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object v0
.end method

.method private displayMessage(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/finsky/billing/promptforfop/PromptForFopMessageFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080046

    const-string v3, "PromptForFopActivity.fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method public onAlreadySetup()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x163

    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mServerLogsCookie:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(I[B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->expireHasNoFop(Ljava/lang/String;)V

    const v0, 0x7f0900b4

    const/16 v1, 0x3eb

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->displayMessage(II)V

    return-void
.end method

.method public onContinueClicked()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const v0, 0x7f040105

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PromptForFopActivity.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PromptForFopActivity.server_logs_cookie"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mServerLogsCookie:[B

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->recordFopSelectorImpression(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFatalError(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x164

    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mServerLogsCookie:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(I[B)V

    const v0, 0x7f0900b5

    const/16 v1, 0x3ec

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->displayMessage(II)V

    return-void
.end method

.method public onInstrumentCreated()V
    .locals 2

    const v0, 0x7f0900b4

    const/16 v1, 0x3ed

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->displayMessage(II)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->recordFopAdded(Ljava/lang/String;)V

    return-void
.end method

.method public onNoneSelected()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x162

    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mServerLogsCookie:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(I[B)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/PromptForFopHelper;->snooze(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PromptForFopActivity.fragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->mServerLogsCookie:[B

    invoke-static {v1, v2}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopFragment;->newInstance(Landroid/accounts/Account;[B)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/promptforfop/PromptForFopActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080046

    const-string v3, "PromptForFopActivity.fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
