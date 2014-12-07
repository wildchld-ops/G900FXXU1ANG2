.class public abstract Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.super Landroid/support/v4/app/Fragment;
.source "StepFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public allowContinueButtonIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method protected getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    return-object v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method protected logClick(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->logClick(ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must implement PlayStoreUiElementNode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public abstract onContinueButtonClicked()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;->logImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "StepFragment.exists"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
