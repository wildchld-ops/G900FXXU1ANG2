.class public Lcom/google/android/finsky/layout/BillingAddress;
.super Landroid/widget/LinearLayout;
.source "BillingAddress.java"

# interfaces
.implements Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/BillingAddress$2;,
        Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;,
        Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;,
        Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;,
        Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;
    }
.end annotation


# static fields
.field private static KEY_ADDRESS_SPEC:Ljava/lang/String;

.field private static KEY_SELECTED_COUNTRY:Ljava/lang/String;


# instance fields
.field private mAddressPlaceholder:Lcom/google/android/finsky/layout/AddressFieldsLayout;

.field private mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

.field private mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

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

.field private mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

.field private mCountrySpinner:Landroid/widget/Spinner;

.field private mCountrySpinnerSelectionSet:Z

.field private mEmailAddress:Landroid/widget/EditText;

.field private mFirstName:Landroid/widget/EditText;

.field private mLastName:Landroid/widget/EditText;

.field private mNameEntry:Landroid/widget/EditText;

.field private mParentListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

.field private mSuggestionProvider:Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;

.field private mWhitelistedCountries:Lcom/google/android/finsky/placesapi/WhitelistedCountriesFlagParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "address_spec"

    sput-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    const-string v0, "selected_country"

    sput-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_SELECTED_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040017

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/BillingAddress;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/android/i18n/addressinput/AddressWidget;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    return-object v0
.end method

.method private static addressFieldToAddressEnum(Lcom/android/i18n/addressinput/AddressField;)I
    .locals 2
    .param p0    # Lcom/android/i18n/addressinput/AddressField;

    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xa

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private addressProblemsToInputValidationErrors(Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V
    .locals 7
    .param p1    # Lcom/android/i18n/addressinput/AddressProblems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressProblems;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/google/android/finsky/layout/BillingAddress$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    const/16 v1, 0xd

    const-string v3, "No equivalent for address widget field: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationError(I)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xa

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static createValidationError(I)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;
    .locals 2
    .param p0    # I

    new-instance v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;-><init>()V

    iput p0, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->hasInputField:Z

    return-object v0
.end method

.method private static createValidationErrorWithMessage(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;
    .locals 2
    .param p0    # I
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationError(I)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->hasErrorMessage:Z

    return-object v0
.end method

.method private isInReducedAddressMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget v1, v1, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onHeightOffsetChangedHoneycomb(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTranslationY(F)V

    return-void
.end method

.method private optionsFromInputFieldList(Ljava/util/List;)Lcom/android/i18n/addressinput/FormOptions;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/i18n/addressinput/FormOptions;"
        }
    .end annotation

    new-instance v2, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v2, v6}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    invoke-static {v3}, Lcom/google/android/finsky/layout/BillingAddress;->addressFieldToAddressEnum(Lcom/android/i18n/addressinput/AddressField;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v6

    return-object v6
.end method

.method private static populatedRequiredFieldsFromAddressType(I)[I
    .locals 8
    .param p0    # I

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x4

    if-ne p0, v5, :cond_1

    const/16 v2, 0x8

    new-array v0, v2, [I

    aput v3, v0, v6

    const/16 v2, 0xa

    aput v2, v0, v5

    const/16 v2, 0x9

    aput v2, v0, v7

    const/4 v2, 0x5

    aput v2, v0, v4

    const/4 v2, 0x6

    aput v2, v0, v3

    const/4 v2, 0x5

    const/16 v3, 0x8

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x7

    aput v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0xc

    aput v3, v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/google/android/finsky/config/G;->reducedBillingAddressRequiresPhonenumber:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    new-array v0, v2, [I

    aput v3, v0, v6

    const/16 v2, 0xa

    aput v2, v0, v5

    const/16 v2, 0x9

    aput v2, v0, v7

    if-eqz v1, :cond_0

    const/16 v2, 0xc

    aput v2, v0, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method private static validateEmailAddress(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0    # Ljava/lang/CharSequence;

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearErrorMessage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->clearErrorMessage()V

    return-void
.end method

.method public displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .locals 9
    .param p1    # Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    const v8, 0x7f090052

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v4, "InputValidationError that can\'t be displayed: type=%d, message=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->inputField:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;->errorMessage:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v4, v0}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v4, v0}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    :cond_0
    :goto_1
    return-object v3

    :pswitch_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    const v5, 0x7f090053

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    const v5, 0x7f090054

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    const v5, 0x7f090051

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    const v5, 0x7f090055

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_8
    const-string v4, "Input error ADDR_WHOLE_ADDRESS. Displaying at ADDRESS_LINE_1."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_9
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/PlayUtils;->setErrorOnTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getAddress()Lcom/google/android/finsky/protos/BillingAddress$Address;
    .locals 5

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget-object v4, v4, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget-object v4, v4, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Lcom/google/android/finsky/billing/BillingUtils;->instrumentAddressFromAddressData(Lcom/android/i18n/addressinput/AddressData;Ljava/util/List;)Lcom/google/android/finsky/protos/BillingAddress$Address;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->deprecatedIsReduced:Z

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    :cond_4
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    :cond_5
    return-object v1
.end method

.method public getAddressValidationErrors()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;",
            ">;"
        }
    .end annotation

    const v4, 0x7f09005f

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->addressProblemsToInputValidationErrors(Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationErrorWithMessage(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationErrorWithMessage(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationErrorWithMessage(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationErrorWithMessage(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/layout/BillingAddress;->validateEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/BillingAddress;->createValidationErrorWithMessage(ILjava/lang/String;)Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AddressFieldsLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressPlaceholder:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    new-instance v1, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;

    new-instance v2, Lcom/google/android/finsky/placesapi/PlacesService;

    sget-object v0, Lcom/google/android/finsky/config/G;->placesApiKey:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/finsky/placesapi/PlacesService;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/placesapi/AdrMicroformatParser;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v3, Lcom/google/android/finsky/utils/CachedLocationAccess;

    invoke-direct {v3}, Lcom/google/android/finsky/utils/CachedLocationAccess;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/utils/CachedLocationAccess;->getCachedLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;-><init>(Lcom/google/android/finsky/layout/BillingAddress;Lcom/google/android/finsky/placesapi/PlacesService;Lcom/android/volley/RequestQueue;Landroid/location/Location;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSuggestionProvider:Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;

    new-instance v0, Lcom/google/android/finsky/placesapi/WhitelistedCountriesFlagParser;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/placesapi/WhitelistedCountriesFlagParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mWhitelistedCountries:Lcom/google/android/finsky/placesapi/WhitelistedCountriesFlagParser;

    return-void
.end method

.method public onHeightOffsetChanged(F)V
    .locals 2
    .param p1    # F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->onHeightOffsetChangedHoneycomb(F)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mParentListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mParentListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;->onHeightOffsetChanged(F)V

    :cond_1
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_SELECTED_COUNTRY:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_SELECTED_COUNTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .param p2    # Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/protos/BillingAddress$Address;)V

    return-void
.end method

.method public setAddressSpec(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/protos/BillingAddress$Address;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .param p2    # Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;
    .param p3    # Lcom/google/android/finsky/protos/BillingAddress$Address;

    const/16 v4, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    if-nez v0, :cond_3

    const/4 v11, -0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v0, p1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    iget-object v1, v6, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v11, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-ltz v11, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_3
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iput-object p2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    iget-object v0, p2, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v0, v0

    if-nez v0, :cond_4

    iget v0, p2, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->billingAddressType:I

    invoke-static {v0}, Lcom/google/android/finsky/layout/BillingAddress;->populatedRequiredFieldsFromAddressType(I)[I

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    :cond_4
    iget-object v0, p2, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v0, v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p2, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    array-length v0, v0

    if-ge v7, v0, :cond_5

    iget-object v0, p2, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;->requiredField:[I

    aget v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v10}, Lcom/google/android/finsky/layout/BillingAddress;->optionsFromInputFieldList(Ljava/util/List;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_6
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_7
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_8
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_9
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressPlaceholder:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v5, v5, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Lcom/google/android/finsky/layout/AddressFieldsLayout;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    :cond_b
    if-eqz p3, :cond_11

    iget-object v0, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    iget-object v1, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v0, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    iget-object v1, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    iget-object v1, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v0, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    iget-object v1, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v0, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p3, Lcom/google/android/finsky/protos/BillingAddress$Address;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-static {p3}, Lcom/google/android/finsky/billing/BillingUtils;->addressDataFromInstrumentAddress(Lcom/google/android/finsky/protos/BillingAddress$Address;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->setFormOptions(Lcom/android/i18n/addressinput/FormOptions;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v1, v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressPlaceholder:Lcom/google/android/finsky/layout/AddressFieldsLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->setOnHeightOffsetChangedListener(Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mWhitelistedCountries:Lcom/google/android/finsky/placesapi/WhitelistedCountriesFlagParser;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v1, v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/placesapi/WhitelistedCountriesFlagParser;->isCountryEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSuggestionProvider:Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v1, v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;->setCountry(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSuggestionProvider:Lcom/google/android/finsky/layout/BillingAddress$AddressSuggestionProviderImpl;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->setSuggestionProvider(Lcom/google/android/finsky/layout/AddressSuggestionProvider;)V

    :goto_2
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->setSuggestionProvider(Lcom/google/android/finsky/layout/AddressSuggestionProvider;)V

    goto :goto_2
.end method

.method public setBillingCountries(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    new-instance v3, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;-><init>(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/finsky/layout/BillingAddress$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/BillingAddress$1;-><init>(Lcom/google/android/finsky/layout/BillingAddress;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    return-void
.end method

.method public setNameInputHint(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method public setOnHeightOffsetChangedListener(Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mParentListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
