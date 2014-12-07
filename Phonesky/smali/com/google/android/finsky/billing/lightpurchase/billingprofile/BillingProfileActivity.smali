.class public Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "BillingProfileActivity.java"

# interfaces
.implements Lcom/google/android/finsky/billing/BillingProfileFragment$Listener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mPurchaseContextToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "BillingProfileActivity.account"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "BillingProfileActivity.purchaseContextToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static extractSelectedInstrumentId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "BillingProfileActivity.selectedInstrumentId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "BillingProfileActivity.fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    move-object v1, v2

    check-cast v1, Lcom/google/android/finsky/billing/BillingProfileBaseFragment;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v4, 0x25b

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->finish()V

    return-void
.end method

.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v2, 0x7f04001f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "BillingProfileActivity.account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "BillingProfileActivity.purchaseContextToken"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mPurchaseContextToken:Ljava/lang/String;

    const v2, 0x7f080150

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onInstrumentSelected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "BillingProfileActivity.selectedInstrumentId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->finish()V

    return-void
.end method

.method protected onReady(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "BillingProfileActivity.fragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->mPurchaseContextToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/finsky/billing/BillingProfileFragment;->newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingProfileFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/BillingProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080046

    const-string v3, "BillingProfileActivity.fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
