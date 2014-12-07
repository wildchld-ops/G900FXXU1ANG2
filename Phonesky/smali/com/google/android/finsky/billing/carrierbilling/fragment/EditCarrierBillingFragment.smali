.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;
.super Lcom/google/android/finsky/fragments/LoggingFragment;
.source "EditCarrierBillingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$1;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;
    }
.end annotation


# instance fields
.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

.field private mEditSection:Landroid/view/ViewGroup;

.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

.field private mNameView:Landroid/widget/TextView;

.field private mPhoneNumberEditView:Landroid/widget/EditText;

.field private mPhoneNumberLabel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/LoggingFragment;-><init>()V

    return-void
.end method

.method private displayErrorToast()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09006e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private displayErrors(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;)V"
        }
    .end annotation

    const v10, 0x7f090060

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    const/4 v1, 0x0

    sget-object v7, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$PhoneCarrierBillingUtils$AddressInputField:[I

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getNameForField(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;Ljava/lang/String;I)V

    const/4 v3, 0x1

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    move-object v6, v1

    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v5

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getNameForField(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v9, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressWidget;->getNameForField(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f090061

    invoke-direct {p0, v7, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090067

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f09005f

    invoke-direct {p0, v7, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_4
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_5
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_6
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090051

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f090062

    invoke-direct {p0, v7, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_0

    move-object v6, v1

    move v5, v0

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrorToast()V

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getFormErrors(Ljava/util/ArrayList;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "InputValidationError that can\'t be displayed: type=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    const-string v3, "Input error ADDR_WHOLE_ADDRESS. Displaying at ADDRESS_LINE_1."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_6
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReturnAddress()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    return-object v2
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberLabel:Landroid/view/View;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/billing/BillingUtils$AddressMode;",
            "Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prefill_address"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "type"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "highlight_address"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setTextViewError(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupAddressEditView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showPhoneNumberEditView(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V

    return-void
.end method

.method private setupAddressEditView(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showNameView(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showPhoneNumberEditView(Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddressData(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V

    return-void
.end method

.method private showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    const v0, 0x7f08004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/AddressFieldsLayout;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    goto :goto_0
.end method

.method private showNameView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPhoneNumberEditView(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberLabel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x34d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/LoggingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080077

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getErrors(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Ljava/util/Collection;

    move-result-object v0

    const/16 v1, 0x34e

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->logClickEvent(I)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getReturnAddress()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;->onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrors(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080078

    if-ne v1, v2, :cond_0

    const/16 v1, 0x34f

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->logClickEvent(I)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;->onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const v7, 0x7f04001d

    invoke-virtual {p1, v7, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f080061

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestFocus()Z

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->initViews(Landroid/view/ViewGroup;)V

    const v7, 0x7f080077

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/layout/PlayActionButton;

    const/4 v7, 0x3

    const v8, 0x7f090064

    invoke-virtual {v4, v7, v8, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    const v7, 0x7f080078

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayActionButton;

    const v7, 0x7f090076

    invoke-virtual {v1, v9, v7, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "type"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    const-string v7, "prefill_address"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    if-eqz v3, :cond_1

    invoke-direct {p0, v6, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setupAddressEditView(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "highlight_address"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getFormErrors(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrors(Ljava/util/Collection;)V

    :cond_0
    return-object v5

    :cond_1
    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setupAddressEditView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/LoggingFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    return-void
.end method
