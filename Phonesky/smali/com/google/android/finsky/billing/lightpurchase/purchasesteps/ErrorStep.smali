.class public Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "ErrorStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
        "<",
        "Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    const/16 v0, 0x302

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;
    .locals 3

    new-instance v1, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ErrorStep.title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ErrorStep.messageHtml"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ErrorStep.purchaseFailed"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f090212

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onContinueButtonClicked()V
    .locals 2

    const/16 v0, 0x303

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ErrorStep.purchaseFailed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseFragment;->preparePurchase()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f04008d

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f08006c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080164

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ErrorStep.title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ErrorStep.messageHtml"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/purchasesteps/ErrorStep;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
