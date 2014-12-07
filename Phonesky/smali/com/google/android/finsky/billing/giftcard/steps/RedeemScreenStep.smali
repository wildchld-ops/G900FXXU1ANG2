.class public Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "RedeemScreenStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment",
        "<",
        "Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mCodeEntry:Landroid/widget/EditText;

.field private mErrorMessageHtml:Ljava/lang/String;

.field private mMainView:Landroid/view/View;

.field private mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    const/16 v0, 0x371

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RedeemCodeActivity.prefill_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RedeemCodeFragment.error_message_html"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private syncErrorTextView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "Null mMainView."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    const v2, 0x7f080207

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mErrorMessageHtml:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mErrorMessageHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f09009c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onContinueButtonClicked()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x372

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->redeem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "RedeemCodeFragment.error_message_html"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mErrorMessageHtml:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RedeemCodeFragment.error_message_html"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mErrorMessageHtml:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const v5, 0x7f04011e

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    const v6, 0x7f080206

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "RedeemCodeActivity.prefill_code"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    const v6, 0x7f080150

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "authAccount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/google/android/finsky/config/G;->redeemTermsAndConditionsUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "%locale%"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%locale_upper%"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    const v6, 0x7f080163

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0900aa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->syncErrorTextView()V

    iget-object v5, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mMainView:Landroid/view/View;

    return-object v5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "RedeemCodeFragment.error_message_html"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mErrorMessageHtml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->mErrorMessageHtml:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/steps/RedeemScreenStep;->syncErrorTextView()V

    return-void
.end method
