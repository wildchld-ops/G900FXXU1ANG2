.class public Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;
.super Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;
.source "ConfirmationStep.java"


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
.field private mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

.field private mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;-><init>()V

    const/16 v0, 0x373

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;)Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;
    .locals 4
    .param p0    # Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ConfirmationStep.challenge"

    invoke-static {p0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;-><init>()V

    iput-object p0, v1, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getContinueButtonLabel(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v0, v0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->buttonLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mPlayStoreUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onContinueButtonClicked()V
    .locals 1

    const/16 v0, 0x374

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->logClick(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->getMultiStepFragment()Lcom/google/android/finsky/billing/lightpurchase/multistep/MultiStepFragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemCodeFragment;->confirm()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/lightpurchase/multistep/StepFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ConfirmationStep.challenge"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/16 v9, 0x8

    const v7, 0x7f04011d

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f08006c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v7, 0x7f080205

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->titleBylineHtml:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    const v7, 0x7f080204

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->thumbnailImage:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :goto_2
    const v7, 0x7f080166

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v7, 0x7f08015c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v7, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/google/android/finsky/billing/giftcard/steps/ConfirmationStep;->mChallenge:Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;

    iget-object v1, v7, Lcom/google/android/finsky/protos/PromoCode$UserConfirmationChallenge;->priceBylineHtml:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    const-string v7, "<strike>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "</strike>"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x10

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_0
    :goto_4
    return-object v6

    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
