.class public Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;
.super Lcom/google/android/finsky/billing/InstrumentFlowFragment;
.source "AddCreditCardFlowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/SidecarFragment$Listener;
.implements Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$8;,
        Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

.field private mCancelButton:Landroid/widget/Button;

.field private mCardholderName:Ljava/lang/String;

.field private mCcCvcField:Landroid/widget/TextView;

.field private mCcExpMonthField:Landroid/widget/TextView;

.field private mCcExpYearField:Landroid/widget/TextView;

.field private mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;"
        }
    .end annotation
.end field

.field private mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

.field private mCreditCardSaverState:Landroid/os/Bundle;

.field private final mElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mFields:Lcom/google/android/finsky/layout/AddCreditCardFields;

.field private mLastErrorInstance:I

.field private mMainView:Landroid/view/ViewGroup;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

.field private mUiEnabled:Z

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field private mWidgetsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;-><init>()V

    const/16 v0, 0x35d

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)Lcom/google/android/finsky/layout/BillingAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)Lcom/google/android/finsky/layout/CreditCardNumberEditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->onBillingCountriesLoaded()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private clearErrorMessages()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/BillingAddress;->clearErrorMessage()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private creditCardInputErrorsToInputValidationErrors(Ljava/util/Set;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$8;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "Unhandled credit card input field error for: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const v2, 0x7f09005e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x3

    const v3, 0x7f09005c

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x2

    const v3, 0x7f09005d

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .locals 4

    iget-object v0, p1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v3, p1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    const v2, 0x7f090047

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpMonthField:Landroid/widget/TextView;

    const v2, 0x7f09004a

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpYearField:Landroid/widget/TextView;

    const v2, 0x7f09004b

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcCvcField:Landroid/widget/TextView;

    const v2, 0x7f09004d

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;-><init>()V

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->allowsReducedBillingAddress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    iput v1, v0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->hasBillingAddressType:Z

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private getCreditCardOrShowErrors()Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;
    .locals 18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->getNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    const/16 v6, 0x7d0

    invoke-static/range {v2 .. v7}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->creditCardInputErrorsToInputValidationErrors(Ljava/util/Set;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/BillingAddress;->getAddressValidationErrors()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->displayErrors([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/BillingAddress;->getAddress()Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v14

    new-instance v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    invoke-direct {v15}, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->expirationMonth:I

    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth:Z

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit16 v6, v6, 0x7d0

    iput v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->expirationYear:I

    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear:Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->lastDigits:Ljava/lang/String;

    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->hasLastDigits:Z

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->protobufType:I

    iput v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->type:I

    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->hasType:Z

    new-instance v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    invoke-direct {v12}, Lcom/google/android/finsky/protos/CommonDevice$Instrument;-><init>()V

    iput-object v14, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->billingAddress:Lcom/google/android/finsky/protos/BillingAddress$Address;

    iput-object v15, v12, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    new-instance v8, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$Instrument;Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;)V

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private handleError()V
    .locals 14

    const/4 v3, -0x1

    const-wide/16 v12, 0x0

    const/16 v5, 0x360

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mLastErrorInstance:I

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getStateInstance()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "Already handled error %d, ignoring."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mLastErrorInstance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getStateInstance()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mLastErrorInstance:I

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getSubstate()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown error code: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getSubstate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getResponse()Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->displayErrors([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->fail(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getErrorHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1, v4}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v0, v12, v13, v5, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :pswitch_3
    new-instance v6, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getErrorHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011a

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x361

    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mAccountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setEventLog(I[BIILandroid/accounts/Account;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v11

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "error_with_choice"

    invoke-virtual {v11, v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2, v10, v4}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v0, v12, v13, v5, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2, v9, v4}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    invoke-virtual {v0, v12, v13, v5, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadBillingCountries()V
    .locals 3

    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mAccountName:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$6;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$6;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;-><init>()V

    iput p0, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->hasInputField:Z

    iput-object p1, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->hasErrorMessage:Z

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;
    .locals 4

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cardholder_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ui_mode"

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private onBillingCountriesLoaded()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCountries:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCountries:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCountries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->setupBillingCountriesWidgets(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->updateSaveButtonState()V

    goto :goto_0

    :cond_1
    const-string v2, "BillingCountries not loaded."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v2, 0x7f09008a

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupBillingCountriesWidgets(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCountries:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mWidgetsInitialized:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V

    :cond_2
    return-void
.end method

.method private updateSaveButtonState()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSaveButton:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mUiEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mFields:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->areAllFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->cancel()V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->cancel()V

    return-void
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unwanted children."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public displayErrors([Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->clearErrorMessages()V

    array-length v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v2, 0x0

    const/16 v4, 0x362

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$7;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)V

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mFields:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddCreditCardFields;->expandFields()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mFields:Lcom/google/android/finsky/layout/AddCreditCardFields;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/layout/AddCreditCardFields;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public enableUi(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mWidgetsInitialized:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mUiEnabled:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->updateSaveButtonState()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onAllFieldsVisible()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->updateSaveButtonState()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity must implement PlayStoreUiElementNode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x35e

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getCreditCardOrShowErrors()Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    # getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->creditCardNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->access$600(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->cvc:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->access$700(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->access$800(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->saveCreditCard(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v2, 0x35f

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->cancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080077
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cardholder_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCardholderName:Ljava/lang/String;

    const-string v2, "ui_mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-eqz p1, :cond_1

    const-string v2, "last_error_instance"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mLastErrorInstance:I

    const-string v2, "credit_card_saver_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaverState:Landroid/os/Bundle;

    :goto_1
    return-void

    :cond_0
    sget-object v2, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v8, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v7, v8, :cond_2

    const v4, 0x7f040015

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08003d

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/BillingAddress;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    const v8, 0x7f090050

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/BillingAddress;->setNameInputHint(I)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v8, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v8, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$2;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$2;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/BillingAddress;->setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f080077

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSaveButton:Landroid/widget/Button;

    instance-of v7, v7, Lcom/google/android/play/layout/PlayActionButton;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSaveButton:Landroid/widget/Button;

    check-cast v7, Lcom/google/android/play/layout/PlayActionButton;

    const/4 v8, 0x3

    const v9, 0x7f090064

    invoke-virtual {v7, v8, v9, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :goto_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->updateSaveButtonState()V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f080078

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCancelButton:Landroid/widget/Button;

    instance-of v7, v7, Lcom/google/android/play/layout/PlayActionButton;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCancelButton:Landroid/widget/Button;

    check-cast v7, Lcom/google/android/play/layout/PlayActionButton;

    const/4 v8, 0x0

    const v9, 0x7f090076

    invoke-virtual {v7, v8, v9, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :goto_3
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08002d

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08002e

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f080041

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget-object v7, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$8;->$SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

    iget-object v8, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const-string v7, "enum %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08003f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/AddCreditCardFields;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mFields:Lcom/google/android/finsky/layout/AddCreditCardFields;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mFields:Lcom/google/android/finsky/layout/AddCreditCardFields;

    invoke-virtual {v7, p0}, Lcom/google/android/finsky/layout/AddCreditCardFields;->setOnAllFieldsVisibleListener(Lcom/google/android/finsky/layout/AddCreditCardFields$OnAllFieldsVisibleListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f080035

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    if-nez p3, :cond_1

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcNumberField:Lcom/google/android/finsky/layout/CreditCardNumberEditText;

    new-instance v8, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;

    invoke-direct {v8, p0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$3;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v9, 0x12c

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f080037

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpMonthField:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f080038

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcExpYearField:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08003a

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCcCvcField:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08003b

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v7, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$4;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$4;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    const v8, 0x7f08003e

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v7, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$5;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$5;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v8, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCardholderName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/BillingAddress;->setDefaultName(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    const v8, 0x7f090050

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/BillingAddress;->setNameInputHint(I)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/finsky/billing/BillingUtils;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/layout/BillingAddress;->setPhoneNumber(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->loadBillingCountries()V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mMainView:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_2
    const v4, 0x7f04012c

    goto/16 :goto_1

    :cond_3
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSaveButton:Landroid/widget/Button;

    const v8, 0x7f090064

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :pswitch_0
    const v7, 0x7f09003c

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v7, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCancelButton:Landroid/widget/Button;

    const v8, 0x7f09011a

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->cancel()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onPause()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->loadBillingCountries()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    const v1, 0x7f090058

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->setHostTitle(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "last_error_instance"

    iget v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mLastErrorInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "credit_card_saver_state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaverState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onStart()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "credit_card_saver"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->newInstance(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "credit_card_saver"

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->addAndRestoreFromSavedState(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->hideProgress()V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->enableUi(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    const v1, 0x7f090065

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->showProgress(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->enableUi(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->hideProgress()V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->enableUi(Z)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->handleError()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mHost:Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowFragment$BillingFlowHost;->hideProgress()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->getResponse()Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaver:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->removeAndSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->mCreditCardSaverState:Landroid/os/Bundle;

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlowFragment;->onStop()V

    return-void
.end method
