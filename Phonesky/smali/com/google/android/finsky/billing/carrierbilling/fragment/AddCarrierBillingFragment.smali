.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.super Lcom/google/android/finsky/fragments/LoggingFragment;
.source "AddCarrierBillingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    }
.end annotation


# instance fields
.field private mAcceptButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mDeclineButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mEditAddressButton:Landroid/widget/ImageButton;

.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

.field private mTosUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/LoggingFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
    .locals 4
    .param p0    # Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prefill_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "prefill_snippet"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tos_url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "carrier_name"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onClick(I)V
    .locals 2
    .param p1    # I

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Unexpected button press. do nothing."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0x350

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x351

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x34c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->logClickEvent(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080077 -> :sswitch_0
        0x7f080078 -> :sswitch_1
        0x7f080087 -> :sswitch_2
    .end sparse-switch
.end method

.method private setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    const v8, 0x7f09006b

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080085

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    move-object v6, p2

    :goto_0
    new-instance v8, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    const v8, 0x7f080086

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    const-string v8, "\n"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const v8, 0x7f080088

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v6

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const v3, 0x7f09006b

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080085

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080088

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method private setAddressToSnippet(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const v8, 0x7f080088

    const v5, 0x7f09006a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f080085

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f080086

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p0, v5, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTosUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "%locale%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private setUpViewForType(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    .param p3    # Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    sget-object v5, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const v5, 0x7f080089

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    if-eqz v5, :cond_0

    const v5, 0x7f090072

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0x7f090114

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p5, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v5, 0x7f080083

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f090041

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p5, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f080084

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Should have accountName available."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v2, :cond_2

    const v5, 0x7f090043

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void

    :pswitch_0
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToSnippet(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToSnippet(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/google/android/finsky/utils/FinskyPreferences;->isGaiaAuthOptedOut:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v5, p6}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_2
    const v5, 0x7f090042

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showAddressSection(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f080082

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080085

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f080087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f080086

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f080088

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableUi(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Lcom/google/android/play/layout/PlayActionButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x34b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->onClick(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v11, 0x7f090117

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "tos_url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setTosUrl(Ljava/lang/String;)V

    const v0, 0x7f04002b

    invoke-virtual {p1, v0, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v8, 0x3

    const v9, 0x7f090114

    invoke-virtual {v0, v8, v9, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    const v0, 0x7f080078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v11}, Lcom/google/android/play/layout/PlayActionButton;->setText(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v10, v11, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    const v0, 0x7f080087

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "type"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    move-result-object v2

    const-string v0, "prefill_address"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    const-string v0, "prefill_snippet"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "carrier_name"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "authAccount"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setUpViewForType(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    return-void
.end method
