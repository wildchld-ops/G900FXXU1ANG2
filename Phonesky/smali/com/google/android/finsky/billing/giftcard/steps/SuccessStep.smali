.class public Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "SuccessStep.java"


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
.field private mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private mRedemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    const/16 v0, 0x375

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;)Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SuccessStep.redemption_success"

    invoke-static {p0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;-><init>()V

    iput-object p0, v1, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->mRedemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->mRedemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->buttonLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onContinueButtonClicked()V
    .locals 1

    const/16 v0, 0x376

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->performSuccessActionAndFinish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SuccessStep.redemption_success"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->mRedemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v2, 0x7f04011f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/steps/SuccessStep;->mRedemptionSuccess:Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;

    iget-object v2, v2, Lcom/google/android/finsky/protos/PromoCode$RedemptionSuccess;->messageHtml:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method
