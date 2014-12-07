.class public abstract Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LoggingFragmentActivity.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field protected mAccountName:Ljava/lang/String;

.field protected mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->getPlayStoreUiElementType()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unwanted children."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected abstract getPlayStoreUiElementType()I
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mAccountName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "authAccount argument not set."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/LoggingFragmentActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method
